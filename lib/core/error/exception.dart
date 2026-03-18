class ServerException implements Exception {
  const ServerException({this.message = 'Server error occurred'});
  final String message;

  @override
  String toString() => 'ServerException: $message';
}

class CacheException implements Exception {
  const CacheException({this.message = 'Cache error occurred'});
  final String message;

  @override
  String toString() => 'CacheException: $message';
}

class NetworkException implements Exception {
  const NetworkException({this.message = 'Network error occurred'});
  final String message;

  @override
  String toString() => 'NetworkException: $message';
}
