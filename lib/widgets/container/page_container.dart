import 'package:flutter/material.dart';
import 'package:reportfolio/config/config.dart';
import 'package:reportfolio/widgets/container/footer_container.dart';

class PageContainer extends StatelessWidget {
  const PageContainer({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) => SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: constraint.maxHeight,
            minWidth: constraint.maxWidth,
          ),
          child: IntrinsicHeight(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: AppColor.whiteLighter,
                    child: child,
                  ),
                ),
                const FooterContainer(text: 'Jaka - Tenessine - Catyousha © 2021'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
