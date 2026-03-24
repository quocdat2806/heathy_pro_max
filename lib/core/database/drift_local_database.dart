import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:healthy_fitness_pro/core/converter/index.dart';
import 'package:healthy_fitness_pro/core/utils/index.dart';
import 'package:path_provider/path_provider.dart';
import 'package:healthy_fitness_pro/shared/entities/index.dart';

part 'drift_local_database.g.dart';

class FoodTb extends Table {
  TextColumn get id => text()();

  TextColumn get name => text()();

  IntColumn get categoryId => integer()();

  TextColumn get servingUnit => text()();

  IntColumn get weightGram => integer()();

  TextColumn get nutrition => text().map(const NutritionConverter())();

  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get updatedAt => dateTime().withDefault(currentDateAndTime)();
}

class MealLogTb extends Table {
  TextColumn get id => text()();
  TextColumn get foodId => text()();
  TextColumn get foodName => text()();
  IntColumn get mealTypeId => integer()();
  IntColumn get quantity => integer()();
  RealColumn get totalCalories => real()();
  RealColumn get totalProtein => real()();
  RealColumn get totalCarbs => real()();
  RealColumn get totalFat => real()();
  IntColumn get weightGram => integer()();
  TextColumn get servingUnit => text()();
  DateTimeColumn get logDate => dateTime()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column> get primaryKey => {id};
}

@DriftDatabase(tables: [FoodTb, MealLogTb])
class LocalDatabase extends _$LocalDatabase {
  static LocalDatabase? _instance;
  static const _walBytesThreshold = 16 * 1024 * 1024;
  static const _maintenanceIntervalDays = 7;
  static const _metaTableName = 'kmeta';
  static const _metaKeyLastMaintain = 'last_maintain_epoch_ms';
  factory LocalDatabase() {
    _instance ??= LocalDatabase._create();
    return _instance!;
  }

  LocalDatabase._create() : super(_openConnection());

  @override
  int get schemaVersion => 2;

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onCreate: (migrator) async {
      await customStatement('PRAGMA page_size=4096');
      await customStatement('PRAGMA auto_vacuum=INCREMENTAL');
      await migrator.createAll();
      await customStatement(
        'CREATE INDEX IF NOT EXISTS idx_food_name ON food_tb (name)',
      );
      await customStatement(
        'CREATE INDEX IF NOT EXISTS idx_food_category_id ON food_tb (category_id)',
      );
      await customStatement(
        'CREATE INDEX IF NOT EXISTS idx_meal_log_date ON meal_log_tb (log_date)',
      );
      await customStatement(
        'CREATE INDEX IF NOT EXISTS idx_meal_log_type ON meal_log_tb (meal_type_id)',
      );
    },
    onUpgrade: (migrator, from, to) async {
      if (from < 2) {
        await migrator.createTable(mealLogTb);
        await customStatement(
          'CREATE INDEX IF NOT EXISTS idx_meal_log_date ON meal_log_tb (log_date)',
        );
        await customStatement(
          'CREATE INDEX IF NOT EXISTS idx_meal_log_type ON meal_log_tb (meal_type_id)',
        );
      }
    },
  );

  Future<void> warmUp() async {
    await customSelect('SELECT 1').get();
    await customStatement('PRAGMA synchronous=NORMAL');
    await _ensureMetaTable();
    await _maybeMaintainDatabase();
    await customStatement('PRAGMA optimize');
  }

  Future<void> _ensureMetaTable() async {
    await customStatement(
      'CREATE TABLE IF NOT EXISTS $_metaTableName ('
      'key TEXT PRIMARY KEY, '
      'value TEXT NOT NULL'
      ')',
    );
  }

  Future<String?> _getMeta(String key) async {
    final row = await customSelect(
      'SELECT value FROM $_metaTableName WHERE key = ?',
      variables: [Variable<String>(key)],
    ).getSingleOrNull();
    return row?.data['value'] as String?;
  }

  Future<void> _setMeta(String key, String value) async {
    await customStatement(
      'INSERT INTO $_metaTableName(key, value) VALUES(?, ?) '
      'ON CONFLICT(key) DO UPDATE SET value=excluded.value',
      [key, value],
    );
  }

  Future<int> _walFileSizeBytes() async {
    final dir = await getApplicationDocumentsDirectory();
    final base = '${dir.path}/kmonie.sqlite';
    final wal = File('$base-wal');
    if (await wal.exists()) return await wal.length();
    return 0;
  }

  Future<int> _freelistCount() async {
    final row = await customSelect('PRAGMA freelist_count').getSingle();
    final v = row.data['freelist_count'] ?? row.data.values.first;
    return (v is int) ? v : int.tryParse('$v') ?? 0;
  }

  Future<DateTime?> _lastMaintainAt() async {
    final v = await _getMeta(_metaKeyLastMaintain);
    if (v == null) return null;
    final ms = int.tryParse(v);
    if (ms == null) return null;
    return DateTime.fromMillisecondsSinceEpoch(ms, isUtc: true);
  }

  Future<void> _markMaintainedNow() async {
    final nowUtc = DateTime.now().toUtc().millisecondsSinceEpoch.toString();
    await _setMeta(_metaKeyLastMaintain, nowUtc);
  }

  Future<void> _maybeMaintainDatabase() async {
    final walSize = await _walFileSizeBytes();
    final last = await _lastMaintainAt();
    final now = DateTime.now().toUtc();
    final needByTime =
        last == null || now.difference(last).inDays >= _maintenanceIntervalDays;
    final needByWal = walSize >= _walBytesThreshold;

    if (!needByTime && !needByWal) return;

    try {
      await customStatement('PRAGMA wal_checkpoint(TRUNCATE);');
      final freePages = await _freelistCount();
      if (freePages > 0) {
        await customStatement('PRAGMA incremental_vacuum($freePages);');
      }
      if (walSize > 64 * 1024 * 1024 ||
          (needByTime && now.difference(last ?? now).inDays >= 90)) {
        await customStatement('VACUUM;');
        await customStatement('PRAGMA wal_checkpoint(TRUNCATE);');
      }
      await _markMaintainedNow();
    } catch (e) {
      appLogger.e('error $e');
    }
  }

  Future<bool> isDatabaseFileExists() async {
    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/kmonie.sqlite');
    return await file.exists();
  }

  Future<int> dbPhysicalSizeBytes() async {
    final dir = await getApplicationDocumentsDirectory();
    final base = '${dir.path}/local.sqlite';
    final files = [File(base), File('$base-wal'), File('$base-shm')];
    int total = 0;
    for (final f in files) {
      if (await f.exists()) {
        total += await f.length();
      }
    }
    return total;
  }

  Future<void> deleteAllUserData() async {
    try {
      await customStatement('DELETE FROM food_tb');
    } catch (e) {
      appLogger.e('Error deleting all user data: $e');
      rethrow;
    }
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final Directory dir = await getApplicationDocumentsDirectory();
    final File file = File('${dir.path}/local.sqlite');
    return NativeDatabase.createInBackground(
      file,
      setup: (db) async {
        db
          ..execute('PRAGMA journal_mode=WAL;')
          ..execute('PRAGMA foreign_keys=ON;');
      },
    );
  });
}
