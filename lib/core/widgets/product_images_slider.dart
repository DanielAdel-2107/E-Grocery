import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/theme/theme.dart';
import 'package:commerce/core/widgets/image_widget.dart';
import 'package:commerce/features/entrypoint/pages/home/presentation/widgets/animated_dots.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductImagesSlider extends StatefulWidget {
  const ProductImagesSlider({
    super.key,
    required this.images,
    this.imageWidget = true,
  });
  final bool imageWidget;
  final List<String> images;

  @override
  State<ProductImagesSlider> createState() => _ProductImagesSliderState();
}

class _ProductImagesSliderState extends State<ProductImagesSlider> {
  late PageController controller;
  int currentIndex = 0;
  List<String> images = [];
  @override
  void initState() {
    super.initState();
    images = widget.images;
    controller = PageController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(CoreDefaults.padding),
      decoration: BoxDecoration(
        color: CoreThemeColor.coloredBackground,
        borderRadius: CoreDefaults.borderRadius,
      ),
      height: MediaQuery.of(context).size.height * 0.35,
      child: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: PageView.builder(
                  controller: controller,
                  onPageChanged: (v) {
                    currentIndex = v;
                    setState(() {});
                  },
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(CoreDefaults.padding),
                      child: AspectRatio(
                        aspectRatio: 1 / 1,
                        child: widget.imageWidget
                            ? ImageWidget(base64String: images[index]
                                // fit: BoxFit.contain,
                                )
                            : Image.asset(images[index], fit: BoxFit.contain),
                      ),
                    );
                  },
                  itemCount: images.length,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(CoreDefaults.padding),
                child: AnimatedDots(
                  totalItems: images.length,
                  currentIndex: currentIndex,
                ),
              )
            ],
          ),
          Positioned(
            right: 0,
            child: Material(
              color: Colors.transparent,
              borderRadius: CoreDefaults.borderRadius,
              child: IconButton(
                onPressed: () {},
                iconSize: 56,
                constraints: const BoxConstraints(minHeight: 56, minWidth: 56),
                icon: Container(
                  padding: const EdgeInsets.all(CoreDefaults.padding),
                  decoration: const BoxDecoration(
                    color: CoreThemeColor.scaffoldBackground,
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(CoreIcons.heart),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
