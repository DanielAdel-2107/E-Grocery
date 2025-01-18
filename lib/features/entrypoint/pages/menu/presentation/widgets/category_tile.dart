import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/theme/theme.dart';
import 'package:commerce/core/widgets/image_widget.dart';
import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile({
    super.key,
    required this.imageLink,
    required this.label,
    this.backgroundColor,
    required this.onTap,
  });

  final String imageLink;
  final String label;
  final Color? backgroundColor;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: CoreThemeColor.scaffoldBackground,
      child: InkWell(
        borderRadius: CoreDefaults.borderRadius,
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(CoreDefaults.padding * 1),
              decoration: BoxDecoration(
                color: backgroundColor ?? CoreThemeColor.textInputBackground,
                shape: BoxShape.circle,
              ),
              child: SizedBox(
                width: 36,
                child: AspectRatio(
                  aspectRatio: 1 / 1,
                  child: ImageWidget(
                    base64String: imageLink,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              label,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
              maxLines: 1,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
