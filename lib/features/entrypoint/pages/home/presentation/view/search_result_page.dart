import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/model/product_model.dart';
import 'package:commerce/core/widgets/back_btn.dart';
import 'package:commerce/core/widgets/product_tile_square.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchResultPage extends StatelessWidget {
  const SearchResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Results'),
        leading: const BackBtn(),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(CoreDefaults.padding),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Search Field',
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(CoreDefaults.padding),
                  child: SvgPicture.asset(CoreIcons.search),
                ),
                suffixIconConstraints: const BoxConstraints(),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: CoreDefaults.padding),
              child: Text(
                '33 Products Found',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: Colors.black),
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.only(top: CoreDefaults.padding),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                childAspectRatio: 0.85,
              ),
              itemCount: 16,
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
        ],
      ),
    );
  }
}
