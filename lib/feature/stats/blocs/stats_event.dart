import 'package:freezed_annotation/freezed_annotation.dart';

part 'stats_event.freezed.dart';

@freezed
abstract class StatsEvent with _$StatsEvent {
  const factory StatsEvent.loadWeeklyStats() = LoadWeeklyStats;
}
