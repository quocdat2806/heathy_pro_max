import 'dart:io';
import 'package:connectivity_plus/connectivity_plus.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
}

class NetworkInfoImpl implements NetworkInfo {
  NetworkInfoImpl(this.connectivity);
  final Connectivity connectivity;

  @override
  Future<bool> get isConnected async {
    final List<ConnectivityResult> result =
        await connectivity.checkConnectivity();

    if (result.contains(ConnectivityResult.none)) return false;

    try {
      final List<InternetAddress> lookup =
          await InternetAddress.lookup('google.com')
              .timeout(const Duration(seconds: 5));
      return lookup.isNotEmpty && lookup.first.rawAddress.isNotEmpty;
    } catch (_) {
      return false;
    }
  }
}
