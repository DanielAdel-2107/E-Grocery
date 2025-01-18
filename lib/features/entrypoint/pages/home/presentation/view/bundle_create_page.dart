import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/widgets/back_btn.dart';
import 'package:commerce/features/entrypoint/pages/home/presentation/widgets/bundle_create_bottom_action_bar.dart';
import 'package:commerce/features/entrypoint/pages/home/presentation/widgets/bundle_create_food_categories.dart';
import 'package:commerce/features/entrypoint/pages/home/presentation/widgets/product_grid_view.dart';
import 'package:flutter/material.dart';

class BundleCreatePage extends StatelessWidget {
  const BundleCreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackBtn(),
        title: const Text('Create My Pack'),
      ),
      body: const Column(
        children: [
          // SearchBar(),
          FoodCategories(),
          SizedBox(height: CoreDefaults.padding / 2),
          ProductGridView(),
          BottomActionBar(),
        ],
      ),
    );
  }
}
