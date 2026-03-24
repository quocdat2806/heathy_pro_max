// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drift_local_database.dart';

// ignore_for_file: type=lint
class $FoodTbTable extends FoodTb with TableInfo<$FoodTbTable, FoodTbData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FoodTbTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _categoryIdMeta = const VerificationMeta(
    'categoryId',
  );
  @override
  late final GeneratedColumn<int> categoryId = GeneratedColumn<int>(
    'category_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _servingUnitMeta = const VerificationMeta(
    'servingUnit',
  );
  @override
  late final GeneratedColumn<String> servingUnit = GeneratedColumn<String>(
    'serving_unit',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _weightGramMeta = const VerificationMeta(
    'weightGram',
  );
  @override
  late final GeneratedColumn<int> weightGram = GeneratedColumn<int>(
    'weight_gram',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  late final GeneratedColumnWithTypeConverter<Nutrition, String> nutrition =
      GeneratedColumn<String>(
        'nutrition',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: true,
      ).withConverter<Nutrition>($FoodTbTable.$converternutrition);
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    name,
    categoryId,
    servingUnit,
    weightGram,
    nutrition,
    createdAt,
    updatedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'food_tb';
  @override
  VerificationContext validateIntegrity(
    Insertable<FoodTbData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('category_id')) {
      context.handle(
        _categoryIdMeta,
        categoryId.isAcceptableOrUnknown(data['category_id']!, _categoryIdMeta),
      );
    } else if (isInserting) {
      context.missing(_categoryIdMeta);
    }
    if (data.containsKey('serving_unit')) {
      context.handle(
        _servingUnitMeta,
        servingUnit.isAcceptableOrUnknown(
          data['serving_unit']!,
          _servingUnitMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_servingUnitMeta);
    }
    if (data.containsKey('weight_gram')) {
      context.handle(
        _weightGramMeta,
        weightGram.isAcceptableOrUnknown(data['weight_gram']!, _weightGramMeta),
      );
    } else if (isInserting) {
      context.missing(_weightGramMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  FoodTbData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FoodTbData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      categoryId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}category_id'],
      )!,
      servingUnit: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}serving_unit'],
      )!,
      weightGram: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}weight_gram'],
      )!,
      nutrition: $FoodTbTable.$converternutrition.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}nutrition'],
        )!,
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
    );
  }

  @override
  $FoodTbTable createAlias(String alias) {
    return $FoodTbTable(attachedDatabase, alias);
  }

  static TypeConverter<Nutrition, String> $converternutrition =
      const NutritionConverter();
}

class FoodTbData extends DataClass implements Insertable<FoodTbData> {
  final String id;
  final String name;
  final int categoryId;
  final String servingUnit;
  final int weightGram;
  final Nutrition nutrition;
  final DateTime createdAt;
  final DateTime updatedAt;
  const FoodTbData({
    required this.id,
    required this.name,
    required this.categoryId,
    required this.servingUnit,
    required this.weightGram,
    required this.nutrition,
    required this.createdAt,
    required this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    map['category_id'] = Variable<int>(categoryId);
    map['serving_unit'] = Variable<String>(servingUnit);
    map['weight_gram'] = Variable<int>(weightGram);
    {
      map['nutrition'] = Variable<String>(
        $FoodTbTable.$converternutrition.toSql(nutrition),
      );
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  FoodTbCompanion toCompanion(bool nullToAbsent) {
    return FoodTbCompanion(
      id: Value(id),
      name: Value(name),
      categoryId: Value(categoryId),
      servingUnit: Value(servingUnit),
      weightGram: Value(weightGram),
      nutrition: Value(nutrition),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory FoodTbData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FoodTbData(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      categoryId: serializer.fromJson<int>(json['categoryId']),
      servingUnit: serializer.fromJson<String>(json['servingUnit']),
      weightGram: serializer.fromJson<int>(json['weightGram']),
      nutrition: serializer.fromJson<Nutrition>(json['nutrition']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'categoryId': serializer.toJson<int>(categoryId),
      'servingUnit': serializer.toJson<String>(servingUnit),
      'weightGram': serializer.toJson<int>(weightGram),
      'nutrition': serializer.toJson<Nutrition>(nutrition),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  FoodTbData copyWith({
    String? id,
    String? name,
    int? categoryId,
    String? servingUnit,
    int? weightGram,
    Nutrition? nutrition,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) => FoodTbData(
    id: id ?? this.id,
    name: name ?? this.name,
    categoryId: categoryId ?? this.categoryId,
    servingUnit: servingUnit ?? this.servingUnit,
    weightGram: weightGram ?? this.weightGram,
    nutrition: nutrition ?? this.nutrition,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
  );
  FoodTbData copyWithCompanion(FoodTbCompanion data) {
    return FoodTbData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      categoryId: data.categoryId.present
          ? data.categoryId.value
          : this.categoryId,
      servingUnit: data.servingUnit.present
          ? data.servingUnit.value
          : this.servingUnit,
      weightGram: data.weightGram.present
          ? data.weightGram.value
          : this.weightGram,
      nutrition: data.nutrition.present ? data.nutrition.value : this.nutrition,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('FoodTbData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('categoryId: $categoryId, ')
          ..write('servingUnit: $servingUnit, ')
          ..write('weightGram: $weightGram, ')
          ..write('nutrition: $nutrition, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    name,
    categoryId,
    servingUnit,
    weightGram,
    nutrition,
    createdAt,
    updatedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FoodTbData &&
          other.id == this.id &&
          other.name == this.name &&
          other.categoryId == this.categoryId &&
          other.servingUnit == this.servingUnit &&
          other.weightGram == this.weightGram &&
          other.nutrition == this.nutrition &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class FoodTbCompanion extends UpdateCompanion<FoodTbData> {
  final Value<String> id;
  final Value<String> name;
  final Value<int> categoryId;
  final Value<String> servingUnit;
  final Value<int> weightGram;
  final Value<Nutrition> nutrition;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<int> rowid;
  const FoodTbCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.categoryId = const Value.absent(),
    this.servingUnit = const Value.absent(),
    this.weightGram = const Value.absent(),
    this.nutrition = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  FoodTbCompanion.insert({
    required String id,
    required String name,
    required int categoryId,
    required String servingUnit,
    required int weightGram,
    required Nutrition nutrition,
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       name = Value(name),
       categoryId = Value(categoryId),
       servingUnit = Value(servingUnit),
       weightGram = Value(weightGram),
       nutrition = Value(nutrition);
  static Insertable<FoodTbData> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<int>? categoryId,
    Expression<String>? servingUnit,
    Expression<int>? weightGram,
    Expression<String>? nutrition,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (categoryId != null) 'category_id': categoryId,
      if (servingUnit != null) 'serving_unit': servingUnit,
      if (weightGram != null) 'weight_gram': weightGram,
      if (nutrition != null) 'nutrition': nutrition,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  FoodTbCompanion copyWith({
    Value<String>? id,
    Value<String>? name,
    Value<int>? categoryId,
    Value<String>? servingUnit,
    Value<int>? weightGram,
    Value<Nutrition>? nutrition,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<int>? rowid,
  }) {
    return FoodTbCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      categoryId: categoryId ?? this.categoryId,
      servingUnit: servingUnit ?? this.servingUnit,
      weightGram: weightGram ?? this.weightGram,
      nutrition: nutrition ?? this.nutrition,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (categoryId.present) {
      map['category_id'] = Variable<int>(categoryId.value);
    }
    if (servingUnit.present) {
      map['serving_unit'] = Variable<String>(servingUnit.value);
    }
    if (weightGram.present) {
      map['weight_gram'] = Variable<int>(weightGram.value);
    }
    if (nutrition.present) {
      map['nutrition'] = Variable<String>(
        $FoodTbTable.$converternutrition.toSql(nutrition.value),
      );
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FoodTbCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('categoryId: $categoryId, ')
          ..write('servingUnit: $servingUnit, ')
          ..write('weightGram: $weightGram, ')
          ..write('nutrition: $nutrition, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $MealLogTbTable extends MealLogTb
    with TableInfo<$MealLogTbTable, MealLogTbData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MealLogTbTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _foodIdMeta = const VerificationMeta('foodId');
  @override
  late final GeneratedColumn<String> foodId = GeneratedColumn<String>(
    'food_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _foodNameMeta = const VerificationMeta(
    'foodName',
  );
  @override
  late final GeneratedColumn<String> foodName = GeneratedColumn<String>(
    'food_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _mealTypeIdMeta = const VerificationMeta(
    'mealTypeId',
  );
  @override
  late final GeneratedColumn<int> mealTypeId = GeneratedColumn<int>(
    'meal_type_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _quantityMeta = const VerificationMeta(
    'quantity',
  );
  @override
  late final GeneratedColumn<int> quantity = GeneratedColumn<int>(
    'quantity',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _totalCaloriesMeta = const VerificationMeta(
    'totalCalories',
  );
  @override
  late final GeneratedColumn<double> totalCalories = GeneratedColumn<double>(
    'total_calories',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _totalProteinMeta = const VerificationMeta(
    'totalProtein',
  );
  @override
  late final GeneratedColumn<double> totalProtein = GeneratedColumn<double>(
    'total_protein',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _totalCarbsMeta = const VerificationMeta(
    'totalCarbs',
  );
  @override
  late final GeneratedColumn<double> totalCarbs = GeneratedColumn<double>(
    'total_carbs',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _totalFatMeta = const VerificationMeta(
    'totalFat',
  );
  @override
  late final GeneratedColumn<double> totalFat = GeneratedColumn<double>(
    'total_fat',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _weightGramMeta = const VerificationMeta(
    'weightGram',
  );
  @override
  late final GeneratedColumn<int> weightGram = GeneratedColumn<int>(
    'weight_gram',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _servingUnitMeta = const VerificationMeta(
    'servingUnit',
  );
  @override
  late final GeneratedColumn<String> servingUnit = GeneratedColumn<String>(
    'serving_unit',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _logDateMeta = const VerificationMeta(
    'logDate',
  );
  @override
  late final GeneratedColumn<DateTime> logDate = GeneratedColumn<DateTime>(
    'log_date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    foodId,
    foodName,
    mealTypeId,
    quantity,
    totalCalories,
    totalProtein,
    totalCarbs,
    totalFat,
    weightGram,
    servingUnit,
    logDate,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'meal_log_tb';
  @override
  VerificationContext validateIntegrity(
    Insertable<MealLogTbData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('food_id')) {
      context.handle(
        _foodIdMeta,
        foodId.isAcceptableOrUnknown(data['food_id']!, _foodIdMeta),
      );
    } else if (isInserting) {
      context.missing(_foodIdMeta);
    }
    if (data.containsKey('food_name')) {
      context.handle(
        _foodNameMeta,
        foodName.isAcceptableOrUnknown(data['food_name']!, _foodNameMeta),
      );
    } else if (isInserting) {
      context.missing(_foodNameMeta);
    }
    if (data.containsKey('meal_type_id')) {
      context.handle(
        _mealTypeIdMeta,
        mealTypeId.isAcceptableOrUnknown(
          data['meal_type_id']!,
          _mealTypeIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_mealTypeIdMeta);
    }
    if (data.containsKey('quantity')) {
      context.handle(
        _quantityMeta,
        quantity.isAcceptableOrUnknown(data['quantity']!, _quantityMeta),
      );
    } else if (isInserting) {
      context.missing(_quantityMeta);
    }
    if (data.containsKey('total_calories')) {
      context.handle(
        _totalCaloriesMeta,
        totalCalories.isAcceptableOrUnknown(
          data['total_calories']!,
          _totalCaloriesMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_totalCaloriesMeta);
    }
    if (data.containsKey('total_protein')) {
      context.handle(
        _totalProteinMeta,
        totalProtein.isAcceptableOrUnknown(
          data['total_protein']!,
          _totalProteinMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_totalProteinMeta);
    }
    if (data.containsKey('total_carbs')) {
      context.handle(
        _totalCarbsMeta,
        totalCarbs.isAcceptableOrUnknown(data['total_carbs']!, _totalCarbsMeta),
      );
    } else if (isInserting) {
      context.missing(_totalCarbsMeta);
    }
    if (data.containsKey('total_fat')) {
      context.handle(
        _totalFatMeta,
        totalFat.isAcceptableOrUnknown(data['total_fat']!, _totalFatMeta),
      );
    } else if (isInserting) {
      context.missing(_totalFatMeta);
    }
    if (data.containsKey('weight_gram')) {
      context.handle(
        _weightGramMeta,
        weightGram.isAcceptableOrUnknown(data['weight_gram']!, _weightGramMeta),
      );
    } else if (isInserting) {
      context.missing(_weightGramMeta);
    }
    if (data.containsKey('serving_unit')) {
      context.handle(
        _servingUnitMeta,
        servingUnit.isAcceptableOrUnknown(
          data['serving_unit']!,
          _servingUnitMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_servingUnitMeta);
    }
    if (data.containsKey('log_date')) {
      context.handle(
        _logDateMeta,
        logDate.isAcceptableOrUnknown(data['log_date']!, _logDateMeta),
      );
    } else if (isInserting) {
      context.missing(_logDateMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MealLogTbData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MealLogTbData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      foodId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}food_id'],
      )!,
      foodName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}food_name'],
      )!,
      mealTypeId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}meal_type_id'],
      )!,
      quantity: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}quantity'],
      )!,
      totalCalories: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}total_calories'],
      )!,
      totalProtein: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}total_protein'],
      )!,
      totalCarbs: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}total_carbs'],
      )!,
      totalFat: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}total_fat'],
      )!,
      weightGram: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}weight_gram'],
      )!,
      servingUnit: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}serving_unit'],
      )!,
      logDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}log_date'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $MealLogTbTable createAlias(String alias) {
    return $MealLogTbTable(attachedDatabase, alias);
  }
}

class MealLogTbData extends DataClass implements Insertable<MealLogTbData> {
  final String id;
  final String foodId;
  final String foodName;
  final int mealTypeId;
  final int quantity;
  final double totalCalories;
  final double totalProtein;
  final double totalCarbs;
  final double totalFat;
  final int weightGram;
  final String servingUnit;
  final DateTime logDate;
  final DateTime createdAt;
  const MealLogTbData({
    required this.id,
    required this.foodId,
    required this.foodName,
    required this.mealTypeId,
    required this.quantity,
    required this.totalCalories,
    required this.totalProtein,
    required this.totalCarbs,
    required this.totalFat,
    required this.weightGram,
    required this.servingUnit,
    required this.logDate,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['food_id'] = Variable<String>(foodId);
    map['food_name'] = Variable<String>(foodName);
    map['meal_type_id'] = Variable<int>(mealTypeId);
    map['quantity'] = Variable<int>(quantity);
    map['total_calories'] = Variable<double>(totalCalories);
    map['total_protein'] = Variable<double>(totalProtein);
    map['total_carbs'] = Variable<double>(totalCarbs);
    map['total_fat'] = Variable<double>(totalFat);
    map['weight_gram'] = Variable<int>(weightGram);
    map['serving_unit'] = Variable<String>(servingUnit);
    map['log_date'] = Variable<DateTime>(logDate);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  MealLogTbCompanion toCompanion(bool nullToAbsent) {
    return MealLogTbCompanion(
      id: Value(id),
      foodId: Value(foodId),
      foodName: Value(foodName),
      mealTypeId: Value(mealTypeId),
      quantity: Value(quantity),
      totalCalories: Value(totalCalories),
      totalProtein: Value(totalProtein),
      totalCarbs: Value(totalCarbs),
      totalFat: Value(totalFat),
      weightGram: Value(weightGram),
      servingUnit: Value(servingUnit),
      logDate: Value(logDate),
      createdAt: Value(createdAt),
    );
  }

  factory MealLogTbData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MealLogTbData(
      id: serializer.fromJson<String>(json['id']),
      foodId: serializer.fromJson<String>(json['foodId']),
      foodName: serializer.fromJson<String>(json['foodName']),
      mealTypeId: serializer.fromJson<int>(json['mealTypeId']),
      quantity: serializer.fromJson<int>(json['quantity']),
      totalCalories: serializer.fromJson<double>(json['totalCalories']),
      totalProtein: serializer.fromJson<double>(json['totalProtein']),
      totalCarbs: serializer.fromJson<double>(json['totalCarbs']),
      totalFat: serializer.fromJson<double>(json['totalFat']),
      weightGram: serializer.fromJson<int>(json['weightGram']),
      servingUnit: serializer.fromJson<String>(json['servingUnit']),
      logDate: serializer.fromJson<DateTime>(json['logDate']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'foodId': serializer.toJson<String>(foodId),
      'foodName': serializer.toJson<String>(foodName),
      'mealTypeId': serializer.toJson<int>(mealTypeId),
      'quantity': serializer.toJson<int>(quantity),
      'totalCalories': serializer.toJson<double>(totalCalories),
      'totalProtein': serializer.toJson<double>(totalProtein),
      'totalCarbs': serializer.toJson<double>(totalCarbs),
      'totalFat': serializer.toJson<double>(totalFat),
      'weightGram': serializer.toJson<int>(weightGram),
      'servingUnit': serializer.toJson<String>(servingUnit),
      'logDate': serializer.toJson<DateTime>(logDate),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  MealLogTbData copyWith({
    String? id,
    String? foodId,
    String? foodName,
    int? mealTypeId,
    int? quantity,
    double? totalCalories,
    double? totalProtein,
    double? totalCarbs,
    double? totalFat,
    int? weightGram,
    String? servingUnit,
    DateTime? logDate,
    DateTime? createdAt,
  }) => MealLogTbData(
    id: id ?? this.id,
    foodId: foodId ?? this.foodId,
    foodName: foodName ?? this.foodName,
    mealTypeId: mealTypeId ?? this.mealTypeId,
    quantity: quantity ?? this.quantity,
    totalCalories: totalCalories ?? this.totalCalories,
    totalProtein: totalProtein ?? this.totalProtein,
    totalCarbs: totalCarbs ?? this.totalCarbs,
    totalFat: totalFat ?? this.totalFat,
    weightGram: weightGram ?? this.weightGram,
    servingUnit: servingUnit ?? this.servingUnit,
    logDate: logDate ?? this.logDate,
    createdAt: createdAt ?? this.createdAt,
  );
  MealLogTbData copyWithCompanion(MealLogTbCompanion data) {
    return MealLogTbData(
      id: data.id.present ? data.id.value : this.id,
      foodId: data.foodId.present ? data.foodId.value : this.foodId,
      foodName: data.foodName.present ? data.foodName.value : this.foodName,
      mealTypeId: data.mealTypeId.present
          ? data.mealTypeId.value
          : this.mealTypeId,
      quantity: data.quantity.present ? data.quantity.value : this.quantity,
      totalCalories: data.totalCalories.present
          ? data.totalCalories.value
          : this.totalCalories,
      totalProtein: data.totalProtein.present
          ? data.totalProtein.value
          : this.totalProtein,
      totalCarbs: data.totalCarbs.present
          ? data.totalCarbs.value
          : this.totalCarbs,
      totalFat: data.totalFat.present ? data.totalFat.value : this.totalFat,
      weightGram: data.weightGram.present
          ? data.weightGram.value
          : this.weightGram,
      servingUnit: data.servingUnit.present
          ? data.servingUnit.value
          : this.servingUnit,
      logDate: data.logDate.present ? data.logDate.value : this.logDate,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MealLogTbData(')
          ..write('id: $id, ')
          ..write('foodId: $foodId, ')
          ..write('foodName: $foodName, ')
          ..write('mealTypeId: $mealTypeId, ')
          ..write('quantity: $quantity, ')
          ..write('totalCalories: $totalCalories, ')
          ..write('totalProtein: $totalProtein, ')
          ..write('totalCarbs: $totalCarbs, ')
          ..write('totalFat: $totalFat, ')
          ..write('weightGram: $weightGram, ')
          ..write('servingUnit: $servingUnit, ')
          ..write('logDate: $logDate, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    foodId,
    foodName,
    mealTypeId,
    quantity,
    totalCalories,
    totalProtein,
    totalCarbs,
    totalFat,
    weightGram,
    servingUnit,
    logDate,
    createdAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MealLogTbData &&
          other.id == this.id &&
          other.foodId == this.foodId &&
          other.foodName == this.foodName &&
          other.mealTypeId == this.mealTypeId &&
          other.quantity == this.quantity &&
          other.totalCalories == this.totalCalories &&
          other.totalProtein == this.totalProtein &&
          other.totalCarbs == this.totalCarbs &&
          other.totalFat == this.totalFat &&
          other.weightGram == this.weightGram &&
          other.servingUnit == this.servingUnit &&
          other.logDate == this.logDate &&
          other.createdAt == this.createdAt);
}

class MealLogTbCompanion extends UpdateCompanion<MealLogTbData> {
  final Value<String> id;
  final Value<String> foodId;
  final Value<String> foodName;
  final Value<int> mealTypeId;
  final Value<int> quantity;
  final Value<double> totalCalories;
  final Value<double> totalProtein;
  final Value<double> totalCarbs;
  final Value<double> totalFat;
  final Value<int> weightGram;
  final Value<String> servingUnit;
  final Value<DateTime> logDate;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const MealLogTbCompanion({
    this.id = const Value.absent(),
    this.foodId = const Value.absent(),
    this.foodName = const Value.absent(),
    this.mealTypeId = const Value.absent(),
    this.quantity = const Value.absent(),
    this.totalCalories = const Value.absent(),
    this.totalProtein = const Value.absent(),
    this.totalCarbs = const Value.absent(),
    this.totalFat = const Value.absent(),
    this.weightGram = const Value.absent(),
    this.servingUnit = const Value.absent(),
    this.logDate = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  MealLogTbCompanion.insert({
    required String id,
    required String foodId,
    required String foodName,
    required int mealTypeId,
    required int quantity,
    required double totalCalories,
    required double totalProtein,
    required double totalCarbs,
    required double totalFat,
    required int weightGram,
    required String servingUnit,
    required DateTime logDate,
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       foodId = Value(foodId),
       foodName = Value(foodName),
       mealTypeId = Value(mealTypeId),
       quantity = Value(quantity),
       totalCalories = Value(totalCalories),
       totalProtein = Value(totalProtein),
       totalCarbs = Value(totalCarbs),
       totalFat = Value(totalFat),
       weightGram = Value(weightGram),
       servingUnit = Value(servingUnit),
       logDate = Value(logDate);
  static Insertable<MealLogTbData> custom({
    Expression<String>? id,
    Expression<String>? foodId,
    Expression<String>? foodName,
    Expression<int>? mealTypeId,
    Expression<int>? quantity,
    Expression<double>? totalCalories,
    Expression<double>? totalProtein,
    Expression<double>? totalCarbs,
    Expression<double>? totalFat,
    Expression<int>? weightGram,
    Expression<String>? servingUnit,
    Expression<DateTime>? logDate,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (foodId != null) 'food_id': foodId,
      if (foodName != null) 'food_name': foodName,
      if (mealTypeId != null) 'meal_type_id': mealTypeId,
      if (quantity != null) 'quantity': quantity,
      if (totalCalories != null) 'total_calories': totalCalories,
      if (totalProtein != null) 'total_protein': totalProtein,
      if (totalCarbs != null) 'total_carbs': totalCarbs,
      if (totalFat != null) 'total_fat': totalFat,
      if (weightGram != null) 'weight_gram': weightGram,
      if (servingUnit != null) 'serving_unit': servingUnit,
      if (logDate != null) 'log_date': logDate,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  MealLogTbCompanion copyWith({
    Value<String>? id,
    Value<String>? foodId,
    Value<String>? foodName,
    Value<int>? mealTypeId,
    Value<int>? quantity,
    Value<double>? totalCalories,
    Value<double>? totalProtein,
    Value<double>? totalCarbs,
    Value<double>? totalFat,
    Value<int>? weightGram,
    Value<String>? servingUnit,
    Value<DateTime>? logDate,
    Value<DateTime>? createdAt,
    Value<int>? rowid,
  }) {
    return MealLogTbCompanion(
      id: id ?? this.id,
      foodId: foodId ?? this.foodId,
      foodName: foodName ?? this.foodName,
      mealTypeId: mealTypeId ?? this.mealTypeId,
      quantity: quantity ?? this.quantity,
      totalCalories: totalCalories ?? this.totalCalories,
      totalProtein: totalProtein ?? this.totalProtein,
      totalCarbs: totalCarbs ?? this.totalCarbs,
      totalFat: totalFat ?? this.totalFat,
      weightGram: weightGram ?? this.weightGram,
      servingUnit: servingUnit ?? this.servingUnit,
      logDate: logDate ?? this.logDate,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (foodId.present) {
      map['food_id'] = Variable<String>(foodId.value);
    }
    if (foodName.present) {
      map['food_name'] = Variable<String>(foodName.value);
    }
    if (mealTypeId.present) {
      map['meal_type_id'] = Variable<int>(mealTypeId.value);
    }
    if (quantity.present) {
      map['quantity'] = Variable<int>(quantity.value);
    }
    if (totalCalories.present) {
      map['total_calories'] = Variable<double>(totalCalories.value);
    }
    if (totalProtein.present) {
      map['total_protein'] = Variable<double>(totalProtein.value);
    }
    if (totalCarbs.present) {
      map['total_carbs'] = Variable<double>(totalCarbs.value);
    }
    if (totalFat.present) {
      map['total_fat'] = Variable<double>(totalFat.value);
    }
    if (weightGram.present) {
      map['weight_gram'] = Variable<int>(weightGram.value);
    }
    if (servingUnit.present) {
      map['serving_unit'] = Variable<String>(servingUnit.value);
    }
    if (logDate.present) {
      map['log_date'] = Variable<DateTime>(logDate.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MealLogTbCompanion(')
          ..write('id: $id, ')
          ..write('foodId: $foodId, ')
          ..write('foodName: $foodName, ')
          ..write('mealTypeId: $mealTypeId, ')
          ..write('quantity: $quantity, ')
          ..write('totalCalories: $totalCalories, ')
          ..write('totalProtein: $totalProtein, ')
          ..write('totalCarbs: $totalCarbs, ')
          ..write('totalFat: $totalFat, ')
          ..write('weightGram: $weightGram, ')
          ..write('servingUnit: $servingUnit, ')
          ..write('logDate: $logDate, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$LocalDatabase extends GeneratedDatabase {
  _$LocalDatabase(QueryExecutor e) : super(e);
  $LocalDatabaseManager get managers => $LocalDatabaseManager(this);
  late final $FoodTbTable foodTb = $FoodTbTable(this);
  late final $MealLogTbTable mealLogTb = $MealLogTbTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [foodTb, mealLogTb];
}

typedef $$FoodTbTableCreateCompanionBuilder =
    FoodTbCompanion Function({
      required String id,
      required String name,
      required int categoryId,
      required String servingUnit,
      required int weightGram,
      required Nutrition nutrition,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<int> rowid,
    });
typedef $$FoodTbTableUpdateCompanionBuilder =
    FoodTbCompanion Function({
      Value<String> id,
      Value<String> name,
      Value<int> categoryId,
      Value<String> servingUnit,
      Value<int> weightGram,
      Value<Nutrition> nutrition,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<int> rowid,
    });

class $$FoodTbTableFilterComposer
    extends Composer<_$LocalDatabase, $FoodTbTable> {
  $$FoodTbTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get categoryId => $composableBuilder(
    column: $table.categoryId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get servingUnit => $composableBuilder(
    column: $table.servingUnit,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get weightGram => $composableBuilder(
    column: $table.weightGram,
    builder: (column) => ColumnFilters(column),
  );

  ColumnWithTypeConverterFilters<Nutrition, Nutrition, String> get nutrition =>
      $composableBuilder(
        column: $table.nutrition,
        builder: (column) => ColumnWithTypeConverterFilters(column),
      );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$FoodTbTableOrderingComposer
    extends Composer<_$LocalDatabase, $FoodTbTable> {
  $$FoodTbTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get categoryId => $composableBuilder(
    column: $table.categoryId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get servingUnit => $composableBuilder(
    column: $table.servingUnit,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get weightGram => $composableBuilder(
    column: $table.weightGram,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get nutrition => $composableBuilder(
    column: $table.nutrition,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$FoodTbTableAnnotationComposer
    extends Composer<_$LocalDatabase, $FoodTbTable> {
  $$FoodTbTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<int> get categoryId => $composableBuilder(
    column: $table.categoryId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get servingUnit => $composableBuilder(
    column: $table.servingUnit,
    builder: (column) => column,
  );

  GeneratedColumn<int> get weightGram => $composableBuilder(
    column: $table.weightGram,
    builder: (column) => column,
  );

  GeneratedColumnWithTypeConverter<Nutrition, String> get nutrition =>
      $composableBuilder(column: $table.nutrition, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $$FoodTbTableTableManager
    extends
        RootTableManager<
          _$LocalDatabase,
          $FoodTbTable,
          FoodTbData,
          $$FoodTbTableFilterComposer,
          $$FoodTbTableOrderingComposer,
          $$FoodTbTableAnnotationComposer,
          $$FoodTbTableCreateCompanionBuilder,
          $$FoodTbTableUpdateCompanionBuilder,
          (
            FoodTbData,
            BaseReferences<_$LocalDatabase, $FoodTbTable, FoodTbData>,
          ),
          FoodTbData,
          PrefetchHooks Function()
        > {
  $$FoodTbTableTableManager(_$LocalDatabase db, $FoodTbTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$FoodTbTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$FoodTbTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$FoodTbTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<int> categoryId = const Value.absent(),
                Value<String> servingUnit = const Value.absent(),
                Value<int> weightGram = const Value.absent(),
                Value<Nutrition> nutrition = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => FoodTbCompanion(
                id: id,
                name: name,
                categoryId: categoryId,
                servingUnit: servingUnit,
                weightGram: weightGram,
                nutrition: nutrition,
                createdAt: createdAt,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String name,
                required int categoryId,
                required String servingUnit,
                required int weightGram,
                required Nutrition nutrition,
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => FoodTbCompanion.insert(
                id: id,
                name: name,
                categoryId: categoryId,
                servingUnit: servingUnit,
                weightGram: weightGram,
                nutrition: nutrition,
                createdAt: createdAt,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$FoodTbTableProcessedTableManager =
    ProcessedTableManager<
      _$LocalDatabase,
      $FoodTbTable,
      FoodTbData,
      $$FoodTbTableFilterComposer,
      $$FoodTbTableOrderingComposer,
      $$FoodTbTableAnnotationComposer,
      $$FoodTbTableCreateCompanionBuilder,
      $$FoodTbTableUpdateCompanionBuilder,
      (FoodTbData, BaseReferences<_$LocalDatabase, $FoodTbTable, FoodTbData>),
      FoodTbData,
      PrefetchHooks Function()
    >;
typedef $$MealLogTbTableCreateCompanionBuilder =
    MealLogTbCompanion Function({
      required String id,
      required String foodId,
      required String foodName,
      required int mealTypeId,
      required int quantity,
      required double totalCalories,
      required double totalProtein,
      required double totalCarbs,
      required double totalFat,
      required int weightGram,
      required String servingUnit,
      required DateTime logDate,
      Value<DateTime> createdAt,
      Value<int> rowid,
    });
typedef $$MealLogTbTableUpdateCompanionBuilder =
    MealLogTbCompanion Function({
      Value<String> id,
      Value<String> foodId,
      Value<String> foodName,
      Value<int> mealTypeId,
      Value<int> quantity,
      Value<double> totalCalories,
      Value<double> totalProtein,
      Value<double> totalCarbs,
      Value<double> totalFat,
      Value<int> weightGram,
      Value<String> servingUnit,
      Value<DateTime> logDate,
      Value<DateTime> createdAt,
      Value<int> rowid,
    });

class $$MealLogTbTableFilterComposer
    extends Composer<_$LocalDatabase, $MealLogTbTable> {
  $$MealLogTbTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get foodId => $composableBuilder(
    column: $table.foodId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get foodName => $composableBuilder(
    column: $table.foodName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get mealTypeId => $composableBuilder(
    column: $table.mealTypeId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get quantity => $composableBuilder(
    column: $table.quantity,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get totalCalories => $composableBuilder(
    column: $table.totalCalories,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get totalProtein => $composableBuilder(
    column: $table.totalProtein,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get totalCarbs => $composableBuilder(
    column: $table.totalCarbs,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get totalFat => $composableBuilder(
    column: $table.totalFat,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get weightGram => $composableBuilder(
    column: $table.weightGram,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get servingUnit => $composableBuilder(
    column: $table.servingUnit,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get logDate => $composableBuilder(
    column: $table.logDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$MealLogTbTableOrderingComposer
    extends Composer<_$LocalDatabase, $MealLogTbTable> {
  $$MealLogTbTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get foodId => $composableBuilder(
    column: $table.foodId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get foodName => $composableBuilder(
    column: $table.foodName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get mealTypeId => $composableBuilder(
    column: $table.mealTypeId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get quantity => $composableBuilder(
    column: $table.quantity,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get totalCalories => $composableBuilder(
    column: $table.totalCalories,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get totalProtein => $composableBuilder(
    column: $table.totalProtein,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get totalCarbs => $composableBuilder(
    column: $table.totalCarbs,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get totalFat => $composableBuilder(
    column: $table.totalFat,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get weightGram => $composableBuilder(
    column: $table.weightGram,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get servingUnit => $composableBuilder(
    column: $table.servingUnit,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get logDate => $composableBuilder(
    column: $table.logDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$MealLogTbTableAnnotationComposer
    extends Composer<_$LocalDatabase, $MealLogTbTable> {
  $$MealLogTbTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get foodId =>
      $composableBuilder(column: $table.foodId, builder: (column) => column);

  GeneratedColumn<String> get foodName =>
      $composableBuilder(column: $table.foodName, builder: (column) => column);

  GeneratedColumn<int> get mealTypeId => $composableBuilder(
    column: $table.mealTypeId,
    builder: (column) => column,
  );

  GeneratedColumn<int> get quantity =>
      $composableBuilder(column: $table.quantity, builder: (column) => column);

  GeneratedColumn<double> get totalCalories => $composableBuilder(
    column: $table.totalCalories,
    builder: (column) => column,
  );

  GeneratedColumn<double> get totalProtein => $composableBuilder(
    column: $table.totalProtein,
    builder: (column) => column,
  );

  GeneratedColumn<double> get totalCarbs => $composableBuilder(
    column: $table.totalCarbs,
    builder: (column) => column,
  );

  GeneratedColumn<double> get totalFat =>
      $composableBuilder(column: $table.totalFat, builder: (column) => column);

  GeneratedColumn<int> get weightGram => $composableBuilder(
    column: $table.weightGram,
    builder: (column) => column,
  );

  GeneratedColumn<String> get servingUnit => $composableBuilder(
    column: $table.servingUnit,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get logDate =>
      $composableBuilder(column: $table.logDate, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$MealLogTbTableTableManager
    extends
        RootTableManager<
          _$LocalDatabase,
          $MealLogTbTable,
          MealLogTbData,
          $$MealLogTbTableFilterComposer,
          $$MealLogTbTableOrderingComposer,
          $$MealLogTbTableAnnotationComposer,
          $$MealLogTbTableCreateCompanionBuilder,
          $$MealLogTbTableUpdateCompanionBuilder,
          (
            MealLogTbData,
            BaseReferences<_$LocalDatabase, $MealLogTbTable, MealLogTbData>,
          ),
          MealLogTbData,
          PrefetchHooks Function()
        > {
  $$MealLogTbTableTableManager(_$LocalDatabase db, $MealLogTbTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MealLogTbTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$MealLogTbTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$MealLogTbTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> foodId = const Value.absent(),
                Value<String> foodName = const Value.absent(),
                Value<int> mealTypeId = const Value.absent(),
                Value<int> quantity = const Value.absent(),
                Value<double> totalCalories = const Value.absent(),
                Value<double> totalProtein = const Value.absent(),
                Value<double> totalCarbs = const Value.absent(),
                Value<double> totalFat = const Value.absent(),
                Value<int> weightGram = const Value.absent(),
                Value<String> servingUnit = const Value.absent(),
                Value<DateTime> logDate = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => MealLogTbCompanion(
                id: id,
                foodId: foodId,
                foodName: foodName,
                mealTypeId: mealTypeId,
                quantity: quantity,
                totalCalories: totalCalories,
                totalProtein: totalProtein,
                totalCarbs: totalCarbs,
                totalFat: totalFat,
                weightGram: weightGram,
                servingUnit: servingUnit,
                logDate: logDate,
                createdAt: createdAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String foodId,
                required String foodName,
                required int mealTypeId,
                required int quantity,
                required double totalCalories,
                required double totalProtein,
                required double totalCarbs,
                required double totalFat,
                required int weightGram,
                required String servingUnit,
                required DateTime logDate,
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => MealLogTbCompanion.insert(
                id: id,
                foodId: foodId,
                foodName: foodName,
                mealTypeId: mealTypeId,
                quantity: quantity,
                totalCalories: totalCalories,
                totalProtein: totalProtein,
                totalCarbs: totalCarbs,
                totalFat: totalFat,
                weightGram: weightGram,
                servingUnit: servingUnit,
                logDate: logDate,
                createdAt: createdAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$MealLogTbTableProcessedTableManager =
    ProcessedTableManager<
      _$LocalDatabase,
      $MealLogTbTable,
      MealLogTbData,
      $$MealLogTbTableFilterComposer,
      $$MealLogTbTableOrderingComposer,
      $$MealLogTbTableAnnotationComposer,
      $$MealLogTbTableCreateCompanionBuilder,
      $$MealLogTbTableUpdateCompanionBuilder,
      (
        MealLogTbData,
        BaseReferences<_$LocalDatabase, $MealLogTbTable, MealLogTbData>,
      ),
      MealLogTbData,
      PrefetchHooks Function()
    >;

class $LocalDatabaseManager {
  final _$LocalDatabase _db;
  $LocalDatabaseManager(this._db);
  $$FoodTbTableTableManager get foodTb =>
      $$FoodTbTableTableManager(_db, _db.foodTb);
  $$MealLogTbTableTableManager get mealLogTb =>
      $$MealLogTbTableTableManager(_db, _db.mealLogTb);
}
