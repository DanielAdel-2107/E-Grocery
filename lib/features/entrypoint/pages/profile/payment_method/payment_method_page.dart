import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/widgets/back_btn.dart';
import 'package:flutter/material.dart';
import 'components/new_card_row.dart';
import 'components/default_card.dart';
import 'components/payment_option_tile.dart';

class PaymentMethodPage extends StatelessWidget {
  const PaymentMethodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackBtn(),
        title: const Text('Payment Option'),
      ),
      body: Column(
        children: [
          const SizedBox(height: CoreDefaults.padding),
          const AddNewCardRow(),
          const PaymentDefaultCard(),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(CoreDefaults.padding),
              child: Text(
                'Other Payment Option',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
              ),
            ),
          ),
          PaymentOptionTile(
            icon: 'assets/images/setting/paypal.png',
            label: 'Paypal',
            accountName: 'mypaypal@gmail.com',
            onTap: () {},
          ),
          PaymentOptionTile(
            icon: 'assets/images/setting/cash.png',
            label: 'Cash on Delivery',
            accountName: 'Pay in Cash',
            onTap: () {},
          ),
          PaymentOptionTile(
            icon: 'assets/images/setting/apple.png',
            label: 'Apple Pay',
            accountName: 'applepay.com',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
