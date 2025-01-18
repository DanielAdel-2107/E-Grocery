import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/theme/theme.dart';
import 'package:commerce/core/widgets/back_btn.dart';
import 'package:flutter/material.dart';
import 'components/order_details_statuses.dart';
import 'components/order_details_total_amount_and_paid.dart';
import 'components/order_details_total_order_product_details.dart';

class OrderDetailsPage extends StatelessWidget {
  const OrderDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CoreThemeColor.cardColor,
      appBar: AppBar(
        leading: const BackBtn(),
        title: const Text('Order Details'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(CoreDefaults.margin),
          padding: const EdgeInsets.all(CoreDefaults.padding),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: CoreDefaults.borderRadius,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Order id #30398505202',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
              const SizedBox(height: CoreDefaults.padding),
              const OrderStatusColumn(),
              const TotalOrderProductDetails(),
              const TotalAmountAndPaidData(),
            ],
          ),
        ),
      ),
    );
  }
}
