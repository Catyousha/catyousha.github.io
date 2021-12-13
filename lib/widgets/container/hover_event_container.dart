import 'package:flutter/material.dart';

class HoverEventContainer extends StatelessWidget {
  const HoverEventContainer({
    Key? key,
    required this.child,
    required this.onHovered,
    required this.onUnhovered,
    this.onPressed,
  }) : super(key: key);

  final Widget child;
  final VoidCallback onHovered;
  final VoidCallback onUnhovered;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onHover: (details) {
        onHovered();
      },
      onEnter: (event) => onHovered(),
      onExit: (event) => onUnhovered(),
      child: GestureDetector(
        onTap: onPressed,
        onTapDown: (event) => onHovered(),
        onTapUp: (event) => onUnhovered(),
        onTapCancel: () => onUnhovered(),
        onPanCancel: () => onUnhovered(),
        child: child,
      ),
    );
  }
}
