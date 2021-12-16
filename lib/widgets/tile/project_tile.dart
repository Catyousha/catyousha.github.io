import 'package:flutter/material.dart';
import 'package:reportfolio/config/config.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../widgets.dart';

class ProjectTile extends StatefulWidget {
  const ProjectTile({
    Key? key,
    required this.type,
    required this.imageSrc,
    required this.title,
    required this.overview,
    required this.skills,
    this.isPinned = false,
    this.callback,
  }) : super(key: key);

  final String type;
  final bool isPinned;
  final String imageSrc;
  final String title;
  final String overview;
  final List<String> skills;
  final VoidCallback? callback;

  @override
  State<ProjectTile> createState() => _ProjectTileState();
}

class _ProjectTileState extends State<ProjectTile> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return HoverEventContainer(
      onHovered: () => setState(() => isHovered = true),
      onUnhovered: () => setState(() => isHovered = false),
      onPressed: widget.callback,
      child: Container(
        constraints: const BoxConstraints(
          maxWidth: 320,
        ),
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: isHovered ? AppColor.blueBright : Colors.transparent,
            width: isHovered ? 0.5 : 0,
          ),
          color: AppColor.whiteBright,
          boxShadow: !isHovered ? AppShadow.medium : AppShadow.small,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            if (widget.isPinned)
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Row(
                  children: const [
                    Expanded(
                      child: Icon(
                        Icons.push_pin,
                        color: AppColor.blueBase,
                        size: 12,
                      ),
                    ),
                  ],
                ),
              ),
            Text(widget.type,
                style: AppText.textSmall.copyWith(
                  fontWeight: AppFontWeight.bold,
                )),
            const SizedBox(height: 8),
            Container(
              constraints: const BoxConstraints(
                maxWidth: 160,
                maxHeight: 90,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.transparent,
                border: Border.all(
                  color: AppColor.blueBase,
                  width: 1,
                ),
                boxShadow:
                    !isHovered ? AppShadow.mediumInner : AppShadow.mediumBlue,
                image: DecorationImage(
                  image: AssetImage(widget.imageSrc),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 38,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  widget.title,
                  style: AppText.textMedium.copyWith(
                    fontWeight: AppFontWeight.bold,
                  ),
                  softWrap: true,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 40,
              child: Text(
                widget.overview,
                style: AppText.textSmall,
                softWrap: true,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(height: 8),
            ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 160,
                maxHeight: 40,
              ),
              child: Wrap(
                spacing: 4,
                runSpacing: 4,
                children: widget.skills.map((e) {
                  return SkillPill(label: e);
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
