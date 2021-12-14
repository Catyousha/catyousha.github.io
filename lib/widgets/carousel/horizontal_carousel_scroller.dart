import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HorizontalCarouselScroller extends StatelessWidget {
  const HorizontalCarouselScroller({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(dragDevices: {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      }),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        clipBehavior: Clip.none,
        child: child,
      ),
    );
  }
}
