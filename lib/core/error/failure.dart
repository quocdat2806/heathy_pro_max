import 'package:freezed_annotation/freezed_annotation.dart';
part 'failure.freezed.dart';

@freezed
sealed class Failure with _$Failure {
  const factory Failure.server([
    @Default('Server error occurred') String message,
  ]) = ServerFailure;

  const factory Failure.cache([
    @Default('Cache error occurred') String message,
  ]) = CacheFailure;

  const factory Failure.network([
    @Default('Network error occurred') String message,
  ]) = NetworkFailure;

  const factory Failure.message(String message) = MessageFailure;
}

extension FailureMessage on Failure {
  String get displayMessage => switch (this) {
        ServerFailure(:final message) => message,
        CacheFailure(:final message) => message,
        NetworkFailure(:final message) => message,
        MessageFailure(:final message) => message,
      };
}
