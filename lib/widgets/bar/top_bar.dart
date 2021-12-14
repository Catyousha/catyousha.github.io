import 'package:flutter/material.dart';
import 'package:reportfolio/config/config.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  const TopBar({
    Key? key,
    this.leadingIcon,
    this.leadingCallback,
    required this.titleIcon,
  }) : super(key: key);

  final IconData titleIcon;
  final IconData? leadingIcon;
  final VoidCallback? leadingCallback;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColor.blueBase,
      title: Icon(
        titleIcon,
        color: AppColor.whiteBright,
        size: 32,
      ),
      centerTitle: true,
      leading: IconButton(
        icon: Icon(
          leadingIcon ?? Icons.chevron_left,
          color: AppColor.whiteBright,
          size: 32,
        ),
        onPressed: leadingCallback ??
            (Navigator.canPop(context)
                ? () => Navigator.pop(context)
                : () => Navigator.popAndPushNamed(context, Routes.home)),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
