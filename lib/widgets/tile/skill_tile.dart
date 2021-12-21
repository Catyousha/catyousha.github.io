import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
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
        width: getValueForScreenType(
          context: context,
          mobile: 120,
          tablet: 250,
        ),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: AppColor.whiteBright,
          border: Border.all(
            color: isHovered ? AppColor.blueBright : Colors.transparent,
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
            Hero(
              tag: widget.title,
              child: Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  color: isHovered ? Colors.transparent : AppColor.whiteBright,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(widget.imgSrc),
                    fit: BoxFit.cover,
                  ),
                  boxShadow:
                      isHovered ? AppShadow.mediumInner : AppShadow.small,
                ),
              ),
            ),
            const SizedBox(height: 18),
            FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(widget.title,
                  style: AppText.textSemiLarge.copyWith(
                    fontWeight: AppFontWeight.bold,
                    color: AppColor.blueBase,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
