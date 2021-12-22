import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:reportfolio/constants/constants.dart';
import 'package:reportfolio/widgets/container/container.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../config/config.dart';

class HomeHeaderSection extends StatefulWidget {
  const HomeHeaderSection({Key? key}) : super(key: key);

  @override
  State<HomeHeaderSection> createState() => _HomeHeaderSectionState();
}

class _HomeHeaderSectionState extends State<HomeHeaderSection> {
  void _launchURL() async {
    if (!await launch(LinkConstant.cv)) throw 'Could not launch CV';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        bottom: 28,
      ),
      color: AppColor.whiteBright,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          '${AssetConstant.commonImageLocation}/header-bg.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: -50,
                  child: HoverEventContainer(
                    onUnhovered: () {},
                    onHovered: () {},
                    child: GestureDetector(
                      onTap: _launchURL,
                      child: const AvatarGlow(
                        glowColor: AppColor.blueLighter,
                        endRadius: 120,
                        duration: Duration(milliseconds: 2000),
                        repeat: true,
                        showTwoGlows: true,
                        child: CircleAvatar(
                          radius: 52,
                          backgroundColor: AppColor.blueLight,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage(
                                '${AssetConstant.commonImageLocation}/logo-jaka.png'),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 18),
            Text('Hello there, my name is',
                style: AppText.textSemiLarge.copyWith(
                  fontWeight: AppFontWeight.medium,
                )),
            const SizedBox(height: 4),
            Text('Jaka Asa Baldan Ahmad',
                style: AppText.textLarge.copyWith(
                  fontWeight: AppFontWeight.medium,
                )),
            const SizedBox(height: 4),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(
                  '20 years old, informatics engineering student.',
                  style: AppText.textMedium,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
