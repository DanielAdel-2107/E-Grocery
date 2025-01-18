import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/theme/theme.dart';
import 'package:flutter/material.dart';

class ProductAvatarWithQuanitty extends StatelessWidget {
  const ProductAvatarWithQuanitty({
    super.key,
    required this.productImage,
    required this.quantity,
  });

  final String productImage;
  final int quantity;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 16),
          padding: const EdgeInsets.all(CoreDefaults.padding / 2),
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          width: 50,
          height: 50,
          child: AspectRatio(
            aspectRatio: 1 / 1,
            child: Image.asset(productImage, fit: BoxFit.contain),
          ),
        ),
        if (quantity > 0)
          Positioned(
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(color: CoreThemeColor.primary, width: 2),
              ),
              child: Text(
                'x$quantity',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(color: Colors.black),
              ),
            ),
          )
      ],
    );
  }
}
