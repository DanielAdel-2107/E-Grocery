import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/features/entrypoint/pages/cart/presentation/widgets/checkout_payment_card_tile.dart';
import 'package:flutter/material.dart';

class PaymentSystem extends StatelessWidget {
  const PaymentSystem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: CoreDefaults.padding,
            vertical: CoreDefaults.padding / 2,
          ),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Select Payment System',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(color: Colors.black),
            ),
          ),
        ),
        SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: CoreDefaults.padding),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              PaymentCardTile(
                label: 'Master Card',
                icon: CoreIcons.masterCard,
                onTap: () {},
                isActive: true,
              ),
              PaymentCardTile(
                label: 'Paypal',
                icon: CoreIcons.paypal,
                onTap: () {},
                isActive: false,
              ),
              PaymentCardTile(
                label: 'Cash On Delivery',
                icon: CoreIcons.cashOnDelivery,
                onTap: () {},
                isActive: false,
              ),
            ],
          ),
        )
      ],
    );
  }
}
