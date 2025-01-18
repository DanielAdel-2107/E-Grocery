import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/widgets/back_btn.dart';
import 'package:commerce/core/widgets/product_tile_square.dart';
import 'package:commerce/features/entrypoint/pages/menu/presentation/provider/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategoryProductPage extends StatelessWidget {
  const CategoryProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ProductProvider>(
      builder: (context, provider, child) {
        return Scaffold(
            appBar: AppBar(
              title: Text(provider.categoryName),
              leading: const BackBtn(),
            ),
            body: FutureBuilder(
              future: provider.getProducts(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text(snapshot.error.toString()));
                }
                return GridView.builder(
                  padding: const EdgeInsets.only(top: CoreDefaults.padding),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 0,
                    childAspectRatio: 0.73,
                  ),
                  itemCount: provider.products.length,
                  itemBuilder: (context, index) {
                    return ProductTileSquare(
                      data: provider.products[index],
                      onCartButtonTap: () {
                        provider.selectProductModel(provider.products[index]);
                      },
                    );
                  },
                );
              },
            ));
      },
    );
  }
}
