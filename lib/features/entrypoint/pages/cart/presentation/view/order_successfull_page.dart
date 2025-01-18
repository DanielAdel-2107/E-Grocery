// ignore_for_file: use_build_context_synchronously

import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/utils/ui_util.dart';
import 'package:commerce/features/entrypoint/pages/cart/presentation/widgets/delivered_successfull.dart';
import 'package:commerce/features/entrypoint/pages/menu/presentation/provider/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OrderSuccessfullPage extends StatelessWidget {
  const OrderSuccessfullPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Spacer(flex: 2),
          Padding(
            padding: const EdgeInsets.all(CoreDefaults.padding),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child: Image.asset(
                  'assets/images/cart/successfully-order.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(CoreDefaults.padding),
            child: Column(
              children: [
                Text(
                  'Order Placed Successfully',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                const Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: CoreDefaults.padding),
                  child: Text(
                    'Thanks for your order. Your order has placed successfully. Please continue your order.',
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(CoreDefaults.padding),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(CoreDefaults.padding),
                  child: SizedBox(
                    width: double.infinity,
                    child: Consumer<ProductProvider>(
                        builder: (context, provider, child) {
                      return ElevatedButton(
                        onPressed: () async {
                          await provider.checkoutCart();
                          UiUtil.openDialog(
                            context: context,
                            widget: const DeliverySuccessfullDialog(),
                          );
                        },
                        child: const Text('Continue'),
                      );
                    }),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: CoreDefaults.padding,
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text('Track Order'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
