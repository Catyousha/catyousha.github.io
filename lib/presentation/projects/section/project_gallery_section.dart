import 'package:flutter/material.dart';
import '../../../config/config.dart';
import '../../../widgets/widgets.dart';

class ProjectGallerySection extends StatelessWidget {
  const ProjectGallerySection({
    Key? key,
    required this.imagesSrc,
  }) : super(key: key);

  final List<String> imagesSrc;

  OverlayEntry _showFullImage(BuildContext context, String imageSrc) {
    OverlayEntry? overlayEntry;
    overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        top: 0,
        left: 0,
        right: 0,
        bottom: 0,
        child: Material(
          color: AppColor.blueBase.withOpacity(0.7),
          child: GestureDetector(
            onTap: () => overlayEntry?.remove(),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width,
                maxHeight: MediaQuery.of(context).size.height,
              ),
              child: Image.asset(
                imageSrc,
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
        ),
      ),
    );
    Overlay.of(context)!.insert(overlayEntry);
    return overlayEntry;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(24.0),
      color: AppColor.blackBright,
      child: HorizontalCarouselScroller(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: imagesSrc.map((e) {
            return GestureDetector(
              onTap: () => _showFullImage(context, e),
              child: Container(
                width: 300,
                height: 170,
                margin: const EdgeInsets.only(right: 8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.0),
                  image: DecorationImage(
                    image: AssetImage(e),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
