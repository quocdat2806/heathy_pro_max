class AppConfig {
  AppConfig._();

  static const String fontFamily = 'OpenSans';
  static final int attachmentLength = 5;
  static final int attachmentTotalSize = 5200000;

  static const String tokenKey = 'token';
  static const int connectTimeout = 5000;
  static const int receiveTimeout = 5000;
  static const int defaultPageSize = 20;
  static const int defaultPageIndex = 0;
  static const double scrollThreshold = 0.7;
  static const String dateDisplayFormat = 'dd/MM/yyyy';
  static const String dateTimeDisplayFormat = 'dd/MM/yyyy HH:mm';
  static const String dateTimeAPIFormat = 'YYYY-MM-DDThh:mm:ssTZD';
  static const String baseUrl = 'https://api.example.com';
}
