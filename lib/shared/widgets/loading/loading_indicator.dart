import 'package:flutter/cupertino.dart';
import 'package:loading_indicator/loading_indicator.dart';

const List<Color> _listColor = [];

Widget loadingIndicator([String? loading]) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Center(
        child: SizedBox(
          width: 80,
          height: 80,
          child: LoadingIndicator(
            indicatorType: Indicator.lineScaleParty,
            colors: _listColor,
            strokeWidth: 8,
          ),
        ),
      ),
      SizedBox(height: 10),
      if (loading?.isNotEmpty ?? false) Text(loading ?? ''),
    ],
  );
}
