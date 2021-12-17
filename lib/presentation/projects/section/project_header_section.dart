import 'package:flutter/material.dart';
import 'package:reportfolio/config/config.dart';
import 'package:reportfolio/widgets/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectHeaderSection extends StatelessWidget {
  const ProjectHeaderSection({
    Key? key,
    required this.title,
    required this.overview,
    required this.fullDescription,
    required this.time,
    required this.skills,
    required this.mainSkillImageSrc,
    this.repoUrl,
  }) : super(key: key);

  final String title;
  final String overview;
  final String fullDescription;
  final String time;
  final String? repoUrl;
  final List<String> skills;
  final String mainSkillImageSrc;

  void _launchURL() async {
    if (!await launch(repoUrl ?? '')) throw 'Could not launch $repoUrl';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.whiteBright,
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              MainSkillImageContainer(
                mainSkillImageSrc: mainSkillImageSrc,
              ),
              const SizedBox(width: 24),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(title,
                        style: AppText.textExtraLarge.copyWith(
                          fontWeight: AppFontWeight.bold,
                        )),
                    const SizedBox(height: 8),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(8),
                        primary: AppColor.blackBright,
                        fixedSize: const Size(34, 34),
                      ),
                      onPressed: () {
                        if (repoUrl != null) _launchURL();
                      },
                      child: const Icon(
                        ReportfolioIcons.octicons,
                        size: 18,
                        color: AppColor.whiteBright,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      overview,
                      style: AppText.textMedium,
                      softWrap: true,
                    ),
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 8,
                      children: skills.map((skill) {
                        return SkillPill(label: skill);
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          const Divider(
            thickness: 1,
            color: AppColor.blackBright,
          ),
          const SizedBox(height: 2),
          Text(
            fullDescription,
            style: AppText.textNormal,
            softWrap: true,
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 8),
          Row(
            children: <Widget>[
              const Icon(
                Icons.history,
                color: AppColor.blackBright,
                size: 18,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  time,
                  style: AppText.textSmall,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
