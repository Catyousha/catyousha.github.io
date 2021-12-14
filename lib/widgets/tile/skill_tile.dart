import 'package:flutter/material.dart';
import '../../config/config.dart';
import '../widgets.dart';

class SkillTile extends StatefulWidget {
  const SkillTile({
    Key? key,
    required this.title,
    required this.imgSrc,
    this.isPinned = false,
    this.callback,
  }) : super(key: key);

  final bool isPinned;
  final String title;
  final String imgSrc;
  final VoidCallback? callback;

  @override
  State<SkillTile> createState() => _SkillTileState();
}

class _SkillTileState extends State<SkillTile> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return HoverEventContainer(
      onHovered: () => setState(() => isHovered = true),
      onUnhovered: () => setState(() => isHovered = false),
      onPressed: widget.callback,
      child: Container(
        padding: const EdgeInsets.all(12),
        constraints: const BoxConstraints(
          minWidth: 50,
          maxWidth: 250,
        ),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: AppColor.whiteBright,
          border: Border.all(
            color: isHovered ? AppColor.blueLighter : Colors.transparent,
            width: isHovered ? 0.5 : 0,
          ),
          boxShadow: !isHovered ? AppShadow.medium : AppShadow.small,
        ),
        child: Column(
          children: <Widget>[
            if (widget.isPinned)
              const Padding(
                padding: EdgeInsets.only(bottom: 18),
                child: Icon(
                  Icons.push_pin,
                  size: 12,
                ),
              ),
            Container(
              constraints: const BoxConstraints(
                minWidth: 45,
                minHeight: 45,
                maxWidth: 90,
                maxHeight: 90,
              ),
              decoration: BoxDecoration(
                color: isHovered ? Colors.transparent : AppColor.whiteBright,
                border: Border.all(
                  color: AppColor.blueLighter,
                  width: 1,
                ),
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(widget.imgSrc),
                  fit: BoxFit.cover,
                ),
                boxShadow: isHovered ? AppShadow.mediumInner : AppShadow.small,
              ),
            ),
            const SizedBox(height: 18),
            Text(widget.title,
                style: AppText.textSemiLarge.copyWith(
                  fontWeight: AppFontWeight.bold,
                  color: AppColor.blueBase,
                ))
          ],
        ),
      ),
    );
  }
}
