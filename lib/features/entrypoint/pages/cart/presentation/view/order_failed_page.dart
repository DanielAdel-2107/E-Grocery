import 'package:commerce/core/constants/constants.dart';
import 'package:flutter/material.dart';

class OrderFailedPage extends StatelessWidget {
  const OrderFailedPage({super.key});

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
                  'assets/images/cart/order-failed.png',
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
                  'Sorry, Order has Failed',
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
                    'Sorry, somethings went wrong.\nPlease try again continue your order',
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(CoreDefaults.padding * 2),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Try Again'),
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
