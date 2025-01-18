import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/model/product_model.dart';
import 'package:commerce/core/widgets/image_widget.dart';
import 'package:commerce/features/entrypoint/pages/menu/presentation/provider/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SingleCartItemTile extends StatelessWidget {
  const SingleCartItemTile({
    super.key,
    required this.product,
    required this.provider,
  });
  final ProductModel product;
  final ProductProvider provider;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: CoreDefaults.padding,
        vertical: CoreDefaults.padding / 2,
      ),
      child: Column(
        children: [
          Row(
            children: [
              /// Thumbnail
              SizedBox(
                width: 70,
                child: AspectRatio(
                    aspectRatio: 1 / 1,
                    child: ImageWidget(base64String: product.imageBin)),
              ),
              const SizedBox(width: 16),

              /// Quantity and Name
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 150,
                          child: Text(
                            product.productName,
                            style:
                                Theme.of(context).textTheme.bodyLarge?.copyWith(
                                      color: Colors.black,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          provider.increaseProductItem(product);
                        },
                        icon: SvgPicture.asset(CoreIcons.addQuantity),
                        constraints: const BoxConstraints(),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          product.count.toString(),
                          style:
                              Theme.of(context).textTheme.bodyLarge?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          provider.decreaseProductItem(product);
                        },
                        icon: SvgPicture.asset(CoreIcons.removeQuantity),
                        constraints: const BoxConstraints(),
                      ),
                    ],
                  )
                ],
              ),
              const Spacer(),

              /// Price and Delete labelLarge
              Column(
                children: [
                  IconButton(
                    constraints: const BoxConstraints(),
                    onPressed: () {
                      provider.removeFromCart(product);
                    },
                    icon: SvgPicture.asset(CoreIcons.delete),
                  ),
                  const SizedBox(height: 16),
                  Text(product.price.toString()),
                ],
              )
            ],
          ),
          const Divider(thickness: 0.1),
        ],
      ),
    );
  }
}
