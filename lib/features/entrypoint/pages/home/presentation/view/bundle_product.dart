import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/widgets/back_btn.dart';
import 'package:commerce/core/widgets/buy_now_row_button.dart';
import 'package:commerce/core/widgets/price_and_quantity_row.dart';
import 'package:commerce/core/widgets/product_images_slider.dart';
import 'package:commerce/core/widgets/review_row_button.dart';
import 'package:commerce/features/entrypoint/pages/home/presentation/widgets/bundle_metadata.dart';
import 'package:commerce/features/entrypoint/pages/home/presentation/widgets/bundle_pack_details.dart';
import 'package:flutter/material.dart';

class BundleProductDetailsPage extends StatelessWidget {
  const BundleProductDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackBtn(),
        title: const Text('Bundle Details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ProductImagesSlider(
              imageWidget: false,
              images: [
                'assets/images/dummy/bundle-slider.png',
                'assets/images/dummy/bundle-slider.png',
                'assets/images/dummy/bundle-slider.png',
              ],
            ),
            /* <---- Product Data -----> */
            Padding(
              padding: const EdgeInsets.all(CoreDefaults.padding),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Bundle Pack',
                      style:
                          Theme.of(context).textTheme.headlineSmall?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                  ),
                  PriceAndQuantityRow(
                    price: 20,
                    orginalPrice: 30,
                    quantity: 2,
                    onQuantityIncrease: () {},
                    onQuantityDecrease: () {},
                  ),
                  const SizedBox(height: CoreDefaults.padding / 2),
                  const BundleMetaData(),
                  const PackDetails(),
                  const ReviewRowButton(totalStars: 5),
                  const Divider(thickness: 0.1),
                  BuyNowRow(
                    onBuyButtonTap: () {},
                    onCartButtonTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
