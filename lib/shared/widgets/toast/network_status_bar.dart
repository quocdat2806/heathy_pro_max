import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectionStatusBanner extends StatefulWidget {
  final Widget child;

  const ConnectionStatusBanner({super.key, required this.child});

  @override
  State<ConnectionStatusBanner> createState() => _ConnectionStatusBannerState();
}

class _ConnectionStatusBannerState extends State<ConnectionStatusBanner> {
  bool _isOffline = false;
  final Connectivity _connectivity = Connectivity();

  @override
  void initState() {
    super.initState();
    _connectivity.onConnectivityChanged.listen((
      List<ConnectivityResult> results,
    ) {
      _setIsOffline(results);
    });

    _checkInitialConnection();
  }

  void _setIsOffline(List<ConnectivityResult> results) {
    final checkResult =
        results.isEmpty || results.every((r) => r == ConnectivityResult.none);

    if (_isOffline != checkResult) {
      setState(() {
        _isOffline = checkResult;
      });
    }
  }

  Future<void> _checkInitialConnection() async {
    final results = await _connectivity.checkConnectivity();
    _setIsOffline(results);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        widget.child,
        if (_isOffline)
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 4),
              decoration: const BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(8)),
              ),
              alignment: Alignment.center,
              child: SafeArea(
                child: Text(
                  'No internet connection',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
