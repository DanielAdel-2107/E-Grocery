import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/model/product_model.dart';
import 'package:commerce/core/widgets/back_btn.dart';
import 'package:commerce/core/widgets/product_tile_square.dart';
import 'package:flutter/material.dart';

class NewItemsPage extends StatelessWidget {
  const NewItemsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Item'),
        leading: const BackBtn(),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: CoreDefaults.padding),
          child: GridView.builder(
            padding: const EdgeInsets.only(top: CoreDefaults.padding),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 0.64,
              mainAxisSpacing: 16,
            ),
            itemCount: 8,
            itemBuilder: (context, index) {
              data:
              ProductModel(
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
              );
            },
          ),
        ),
      ),
    );
  }
}
