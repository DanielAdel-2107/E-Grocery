import 'package:commerce/core/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BuyNowRow extends StatelessWidget {
  const BuyNowRow({
    super.key,
    required this.onCartButtonTap,
    required this.onBuyButtonTap,
  });

  final void Function() onCartButtonTap;
  final void Function() onBuyButtonTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: CoreDefaults.padding,
      ),
      child: Row(
        children: [
          OutlinedButton(
            onPressed: onCartButtonTap,
            child: SvgPicture.asset(CoreIcons.shoppingCart),
          ),
          const SizedBox(width: CoreDefaults.padding),
          Expanded(
            child: ElevatedButton(
              onPressed: onBuyButtonTap,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(CoreDefaults.padding * 1.2),
              ),
              child: const Text('Buy Now'),
            ),
          ),
        ],
      ),
    );
  }
}
