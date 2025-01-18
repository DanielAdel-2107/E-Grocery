import 'dart:convert';
import 'dart:typed_data';
import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/model/product_model.dart';
import 'package:commerce/core/routes/routes.dart';
import 'package:commerce/core/theme/theme.dart';
import 'package:commerce/core/widgets/image_widget.dart';
import 'package:flutter/material.dart';

class ProductTileSquare extends StatelessWidget {
  const ProductTileSquare({
    super.key,
    required this.data,
    this.onCartButtonTap,
  });

  final ProductModel data;
  final Function()? onCartButtonTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: CoreDefaults.padding / 2),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: CoreDefaults.borderRadius,
          color: CoreThemeColor.scaffoldBackground,
          border: Border.all(width: 1, color: Colors.green),
        ),
        child: InkWell(
          borderRadius: CoreDefaults.borderRadius,
          onTap: () {
            onCartButtonTap?.call();
            Navigator.pushNamed(context, RoutesName.productDetails);
          },
          child: Container(
            width: 176,
            height: 296,
            padding: const EdgeInsets.symmetric(
              horizontal: CoreDefaults.padding,
            ),
            decoration: BoxDecoration(
              border: Border.all(width: 0.1, color: CoreThemeColor.placeholder),
              borderRadius: CoreDefaults.borderRadius,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AspectRatio(
                    aspectRatio: 1 / 1,
                    child: ImageWidget(base64String: data.imageBin)),
                const SizedBox(height: 8),
                Text(
                  data.productName,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: Colors.black),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  data.description,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                const SizedBox(height: 4),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '\$${data.price.toInt()}',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(color: Colors.black),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      '\$${data.price}',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            decoration: TextDecoration.lineThrough,
                          ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
