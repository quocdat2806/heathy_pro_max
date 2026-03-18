import 'package:dio/dio.dart';
import 'failure.dart';

String _extractMessage(dynamic data) {
  if (data == null) return '';
  try {
    if (data is String) return data.trim();
    if (data is Map<String, dynamic>) {
      for (final String key in ['message', 'error', 'detail', 'title']) {
        final dynamic v = data[key];
        if (v is String && v.trim().isNotEmpty) return v.trim();
        if (v is List && v.isNotEmpty && v.first is String) {
          return (v.first as String).trim();
        }
      }
      final dynamic errors = data['errors'];
      if (errors is Map<String, dynamic>) {
        for (final dynamic v in errors.values) {
          if (v is List && v.isNotEmpty) return v.first.toString();
          if (v is String && v.isNotEmpty) return v;
        }
      }
    }
  } catch (_) {
    return '';
  }
  return '';
}

String _msg(String serverMsg, String fallback) =>
    serverMsg.isNotEmpty ? serverMsg : fallback;

Failure mapDioErrorToFailure(DioException e) {
  switch (e.type) {
    case DioExceptionType.connectionTimeout:
    case DioExceptionType.receiveTimeout:
    case DioExceptionType.sendTimeout:
    case DioExceptionType.connectionError:
      return const NetworkFailure('Connection timeout');

    case DioExceptionType.cancel:
      return const NetworkFailure('Request cancelled');

    case DioExceptionType.badCertificate:
      return const NetworkFailure('Bad certificate');

    case DioExceptionType.unknown:
      return const NetworkFailure('No internet or unknown error');

    case DioExceptionType.badResponse:
      final int code = e.response?.statusCode ?? 0;
      final String msg = _extractMessage(e.response?.data);

      return switch (code) {
        401 => ServerFailure(_msg(msg, 'Unauthorized')),
        403 => ServerFailure(_msg(msg, 'Forbidden')),
        404 => ServerFailure(_msg(msg, 'Not found')),
        409 => ServerFailure(_msg(msg, 'Conflict')),
        422 => ServerFailure(_msg(msg, 'Validation error')),
        >= 500 => ServerFailure(_msg(msg, 'Server error')),
        _ => ServerFailure(_msg(msg, 'Request failed')),
      };
  }
}
