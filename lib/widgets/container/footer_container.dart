import 'package:flutter/material.dart';
import '../../config/themes/themes.dart';

class FooterContainer extends StatelessWidget {
  const FooterContainer({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.blueBase,
      height: 45,
      child: Center(
        child: Text(text,
            style: AppText.textNormal.copyWith(
              color: AppColor.whiteBright,
              fontWeight: AppFontWeight.bold,
            )),
      ),
    );
  }
}
