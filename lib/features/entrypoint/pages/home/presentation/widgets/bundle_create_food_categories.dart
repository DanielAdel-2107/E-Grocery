import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/features/entrypoint/pages/home/presentation/widgets/app_chip.dart';
import 'package:flutter/material.dart';

class FoodCategories extends StatelessWidget {
  const FoodCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(
        horizontal: CoreDefaults.padding,
      ),
      child: Row(
        children: [
          AppChip(
            isActive: true,
            label: 'Vegetables',
            onPressed: () {},
          ),
          AppChip(
            isActive: false,
            label: 'Meat & Fish',
            onPressed: () {},
          ),
          AppChip(
            isActive: false,
            label: 'Medicine',
            onPressed: () {},
          ),
          AppChip(
            isActive: false,
            label: 'Baby Care',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
