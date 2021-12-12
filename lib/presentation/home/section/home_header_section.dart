import 'package:flutter/material.dart';
import 'package:reportfolio/constants/constants.dart';
import '../../../config/config.dart';

class HomeHeaderSection extends StatelessWidget {
  const HomeHeaderSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 28),
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
                const Positioned(
                  bottom: -50,
                  child: CircleAvatar(
                    radius: 52,
                    backgroundColor: AppColor.blueLight,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                          '${AssetConstant.commonImageLocation}/profile-pic.png'),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 67),
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
            const Text('20 years old, informatics engineering student.',
                style: AppText.textMedium),
          ],
        ),
      ),
    );
  }
}
