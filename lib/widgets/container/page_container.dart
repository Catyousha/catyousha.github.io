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
    return CustomScrollView(
      shrinkWrap: true,
      slivers: [
        SliverToBoxAdapter(
          child: Container(
            color: AppColor.whiteLighter,
            child: child,
          ),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const <Widget>[
                FooterContainer(
                  text: 'Jaka - Tenessine - Catyousha © 2021',
                ),
              ]),
        )
      ],
    );
  }
}
