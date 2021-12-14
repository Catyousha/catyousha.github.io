import 'package:flutter/material.dart';
import 'package:reportfolio/config/config.dart';
import 'package:reportfolio/constants/constants.dart';
import 'package:reportfolio/widgets/text/section_header_text.dart';
import 'package:reportfolio/widgets/tile/tile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      color: AppColor.blackLight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SectionHeaderText(
            icon: Icons.contact_page,
            title: 'Reach me at...',
            iconColor: AppColor.whiteBright,
            titleColor: AppColor.whiteBright,
          ),
          const SizedBox(height: 24),
          Center(
            child: Wrap(
              alignment: WrapAlignment.spaceBetween,
              runSpacing: getValueForScreenType(
                context: context,
                mobile: 10,
                tablet: 20,
              ),
              spacing: 20,
              children: const <Widget>[
                ContactTile(
                  imageSrc: '${AssetConstant.contactImageLocation}/Gmail.png',
                  description: "Frequently checked, including spam folder.",
                  title: "jakaasha@gmail.com",
                ),
                ContactTile(
                  imageSrc: '${AssetConstant.contactImageLocation}/Github.png',
                  description:
                      "If you wanna see my progress from zero to present.",
                  title: "github.com/Catyousha",
                ),
                ContactTile(
                  imageSrc:
                      '${AssetConstant.contactImageLocation}/LinkedIn.png',
                  description: "Formalities.",
                  title: "Jaka Asa Baldan Ahmad - LinkedIn",
                ),
                ContactTile(
                  imageSrc: '${AssetConstant.contactImageLocation}/Discord.png',
                  description: "Feel free to put me into ur circle.",
                  title: "Tenessine#5272",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
