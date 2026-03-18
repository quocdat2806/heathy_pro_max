import 'package:flutter/material.dart';

import 'loading_indicator.dart';

class LoadingOverlay extends StatelessWidget {
  final Widget child;
  final bool isLoading;

  const LoadingOverlay({
    super.key,
    required this.child,
    required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        if (isLoading)
          Positioned.fill(
            child: Container(
              alignment: Alignment.center,
              color: Colors.white.withValues(alpha: 0.5),
              child: loadingIndicator('Loading...'),
            ),
          ),
      ],
    );
  }
}
