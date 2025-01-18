import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PriceAndQuantityRow extends StatelessWidget {
  const PriceAndQuantityRow({
    super.key,
    required this.price,
    required this.orginalPrice,
    required this.quantity,
    required this.onQuantityIncrease,
    required this.onQuantityDecrease,
  });

  final double price;
  final double orginalPrice;
  final int quantity;
  final void Function()? onQuantityIncrease;
  final void Function()? onQuantityDecrease;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        /* <---- Price -----> */
        Text(
          orginalPrice.toString(),
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.lineThrough,
              ),
        ),
        const SizedBox(width: CoreDefaults.padding),
        Text(
          price.toString(),
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              color: CoreThemeColor.primary, fontWeight: FontWeight.bold),
        ),
        const Spacer(),

        /* <---- Quantity -----> */
        Row(
          children: [
            IconButton(
              onPressed: onQuantityIncrease,
              icon: SvgPicture.asset(CoreIcons.addQuantity),
              constraints: const BoxConstraints(),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '$quantity',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
              ),
            ),
            IconButton(
              onPressed: onQuantityDecrease,
              icon: SvgPicture.asset(CoreIcons.removeQuantity),
              constraints: const BoxConstraints(),
            ),
          ],
        )
      ],
    );
  }
}
