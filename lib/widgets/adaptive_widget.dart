import 'package:flutter/material.dart';

class AdaptiveWidget extends StatelessWidget {
  final Widget? narrow;
  final Widget? wide;
  final Widget? ultraWide;
  final Widget? other;

  const AdaptiveWidget({
    super.key,
    this.narrow,
    this.wide,
    this.ultraWide,
    this.other,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    if (width >= 720 && wide != null) {
      return wide!;
    }
    if (narrow != null) {
      return narrow!;
    }
    throw Exception('Can not match layout!');
  }
}
