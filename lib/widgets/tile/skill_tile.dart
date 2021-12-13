import 'package:flutter/material.dart';
import '../../config/config.dart';

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
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (event) => setState(() => isHovered = true),
      onExit: (event) => setState(() => isHovered = false),
      child: GestureDetector(
        onTap: widget.callback,
        onTapDown: (details) => setState(() => isHovered = true),
        onTapUp: (details) => setState(() => isHovered = false),
        child: Container(
          padding: const EdgeInsets.all(12),
          constraints: const BoxConstraints(
            minWidth: 50,
            maxWidth: 250,
          ),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            color: AppColor.whiteBright,
            boxShadow: AppShadow.medium,
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
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(widget.imgSrc),
                    fit: BoxFit.cover,
                  ),
                  boxShadow:
                      isHovered ? AppShadow.mediumInner : AppShadow.small,
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
      ),
    );
  }
}
