import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/utils/ui_util.dart';
import 'package:commerce/core/widgets/back_btn.dart';
import 'package:commerce/core/widgets/buy_now_row_button.dart';
import 'package:commerce/core/widgets/price_and_quantity_row.dart';
import 'package:commerce/core/widgets/product_images_slider.dart';
import 'package:commerce/core/widgets/review_row_button.dart';
import 'package:commerce/features/entrypoint/pages/menu/presentation/provider/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: const BackBtn(),
        title: const Text('Product Details'),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: CoreDefaults.padding),
          child: Selector<ProductProvider, ProductProvider>(
            selector: (_, provider) => provider,
            builder: (context, provider, _) {
              return BuyNowRow(
                onBuyButtonTap: () {},
                onCartButtonTap: () {
                  provider.addToCart(provider.selectedProductModel!);
                  UiUtil.openDialog(
                      context: context,
                      widget: Dialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: CoreDefaults.borderRadius,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 32, vertical: 16),
                          child: Text(
                            "Item Added To Cart Successfully",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ),
                      ));
                },
              );
            },
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Product Images Slider
            Selector<ProductProvider, String>(
              selector: (_, provider) =>
                  provider.selectedProductModel!.imageBin,
              builder: (context, image, _) {
                return ProductImagesSlider(
                  images: [image, image, image],
                );
              },
            ),

            /// Product Name and Weight
            Selector<ProductProvider, String>(
              selector: (_, provider) =>
                  provider.selectedProductModel!.productName,
              builder: (context, productName, _) {
                return SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(CoreDefaults.padding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          productName,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style:
                              Theme.of(context).textTheme.titleLarge?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        const SizedBox(height: 8),
                        const Text('Weight: 5Kg'),
                      ],
                    ),
                  ),
                );
              },
            ),

            /// Price and Quantity Row
            Consumer<ProductProvider>(
              builder: (context, provider, child) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: CoreDefaults.padding),
                  child: PriceAndQuantityRow(
                    price: provider.selectedProductModel!.price.toDouble(),
                    orginalPrice:
                        provider.selectedProductModel!.price.toDouble(),
                    quantity: provider.selectedProductModel!.count ?? 1,
                    onQuantityIncrease: () {
                      provider
                          .increaseProductItem(provider.selectedProductModel!);
                    },
                    onQuantityDecrease: () {
                      provider
                          .decreaseProductItem(provider.selectedProductModel!);
                    },
                  ),
                );
              },
            ),
            const SizedBox(height: 8),

            /// Product Details
            Padding(
              padding: const EdgeInsets.all(CoreDefaults.padding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Product Details',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Duis aute veniam veniam qui aliquip irure duis sint magna occaecat dolore nisi culpa do. Est nisi incididunt aliquip  commodo aliqua tempor.',
                  ),
                ],
              ),
            ),

            /// Review Row
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: CoreDefaults.padding,
              ),
              child: Column(
                children: [
                  Divider(thickness: 0.1),
                  ReviewRowButton(totalStars: 5),
                  Divider(thickness: 0.1),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
