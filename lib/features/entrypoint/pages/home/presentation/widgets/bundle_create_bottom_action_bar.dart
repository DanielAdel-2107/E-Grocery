import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/theme/theme.dart';
import 'package:commerce/features/entrypoint/pages/home/presentation/widgets/product_avatar_with_quantity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomActionBar extends StatelessWidget {
  const BottomActionBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(CoreDefaults.padding),
      decoration: BoxDecoration(
        color: CoreThemeColor.primary,
        borderRadius: CoreDefaults.bottomSheetRadius,
      ),
      child: Row(
        children: [
          const ProductAvatarWithQuanitty(
            productImage: 'assets/images/dummy/product-avatar1.png',
            quantity: 2,
          ),
          const ProductAvatarWithQuanitty(
            productImage: 'assets/images/dummy/product-avatar2.png',
            quantity: 0,
          ),
          const ProductAvatarWithQuanitty(
            productImage: 'assets/images/dummy/product-avatar3.png',
            quantity: 5,
          ),
          // const ProductAvatarWithQuanitty(
          //   productImage: 'https://i.imgur.com/W6DJD9Y.png',
          //   quantity: 0,
          // ),
          const Spacer(),
          Text(
            '\$35.05',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(width: 8),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            padding: const EdgeInsets.all(CoreDefaults.padding),
            child: SvgPicture.asset(CoreIcons.arrowForward),
          ),
        ],
      ),
    );
  }
}
