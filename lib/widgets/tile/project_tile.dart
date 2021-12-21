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
    this.maxWidth,
    this.isPinned = false,
    this.callback,
  }) : super(key: key);

  final String type;
  final bool isPinned;
  final String imageSrc;
  final String title;
  final String overview;
  final double? maxWidth;
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
        constraints: BoxConstraints(
          maxWidth: widget.maxWidth ??
              getValueForScreenType(
                context: context,
                mobile: 560,
                tablet: 320,
                desktop: 320,
              ),
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
            Text(widget.type,
                style: AppText.textSmall.copyWith(
                  fontWeight: AppFontWeight.bold,
                )),
            const SizedBox(height: 8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  widget.imageSrc,
                  width: 110,
                  height: 75,
                  fit: BoxFit.fill,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
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
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 4,
              runSpacing: 4,
              children: widget.skills.map((e) {
                return SkillPill(label: e);
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
