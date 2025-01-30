import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/routes/routes.dart';
import 'package:commerce/core/theme/theme.dart';
import 'package:commerce/core/utils/ui_util.dart';
import 'package:commerce/core/widgets/back_btn.dart';
import 'package:commerce/features/entrypoint/pages/cart/presentation/widgets/coupon_code_field.dart';
import 'package:commerce/features/entrypoint/pages/cart/presentation/widgets/items_totals_price.dart';
import 'package:commerce/features/entrypoint/pages/cart/presentation/widgets/single_cart_item_tile.dart';
import 'package:commerce/features/entrypoint/pages/menu/presentation/provider/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  final bool isHomePage;
  const CartPage({super.key, this.isHomePage = false});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: isHomePage
          ? null
          : AppBar(
              leading: const BackBtn(),
              title: const Text('Cart Page'),
            ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Consumer<ProductProvider>(builder: (context, provider, child) {
            return Column(
              children: [
                provider.cart.isEmpty
                    ? Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          "No product Exist",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(color: CoreThemeColor.primary),
                        ),
                      )
                    : SizedBox(
                        height: MediaQuery.sizeOf(context).height / 3,
                        child: ListView.builder(
                            itemCount: provider.cart.length,
                            itemBuilder: (context, index) {
                              return SingleCartItemTile(
                                product: provider.cart.elementAt(index),
                                provider: provider,
                              );
                            }),
                      ),
                const CouponCodeField(),
                ItemTotalsAndPrice(
                  products: provider.cart,
                  totalPrice: provider.totalPrice().toString(),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(CoreDefaults.padding),
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigator.pushNamed(context, AppRoutes.orderSuccessfull);
                        if (provider.cart.isNotEmpty) {
                          Navigator.pushNamed(context, RoutesName.checkoutPage);
                        } else {
                          UiUtil.openBottomSheet(
                              context: context,
                              widget: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text(
                                  "You cant checkout with empty cart",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium
                                      ?.copyWith(color: Colors.red),
                                ),
                              ));
                        }
                      },
                      child: const Text('Checkout'),
                    ),
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
