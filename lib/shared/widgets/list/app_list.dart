import 'package:flutter/material.dart';

class AppList extends StatelessWidget {
  final int itemCount;
  final IndexedWidgetBuilder itemBuilder;

  final Axis scrollDirection;
  final bool shrinkWrap;
  final ScrollPhysics? physics;
  final EdgeInsetsGeometry? padding;

  final double spacing;

  final double? itemExtent;

  const AppList({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
    this.scrollDirection = Axis.vertical,
    this.shrinkWrap = false,
    this.physics,
    this.padding,
    this.spacing = 8,
    this.itemExtent,
  });

  @override
  Widget build(BuildContext context) {
    final listView = ListView.builder(
      scrollDirection: scrollDirection,
      shrinkWrap: shrinkWrap,
      physics: physics,
      padding: padding,
      itemCount: itemCount,
      itemBuilder: (context, index) {
        final item = itemBuilder(context, index);

        if (spacing == 0) return item;

        return Padding(
          padding: scrollDirection == Axis.vertical
              ? EdgeInsets.only(bottom: index == itemCount - 1 ? 0 : spacing)
              : EdgeInsets.only(right: index == itemCount - 1 ? 0 : spacing),
          child: item,
        );
      },
      itemExtent: itemExtent,
    );

    return listView;
  }
}
