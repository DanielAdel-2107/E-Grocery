import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/model/product_model.dart';
import 'package:commerce/core/widgets/product_tile_square.dart';
import 'package:flutter/material.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        padding: const EdgeInsets.only(top: CoreDefaults.padding),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 16, childAspectRatio: 1 / 1.5),
        itemCount: 16,
        itemBuilder: (context, index) {
          return ProductTileSquare(
              data: ProductModel(
            id: 1,
            productName: "productName",
            description: "description",
            imageBin: "imageBin",
            bestSeller: true,
            categoryId: 1,
            categoryName: "categoryName",
            featured: true,
            inStock: true,
            price: 1,
            rate: 1,
            userName: "userName",
            userId: 1,
            count: 1,
            onBidding: true,
          ));
        },
      ),
    );
  }
}
