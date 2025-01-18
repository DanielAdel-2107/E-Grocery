import 'package:commerce/core/model/category_model.dart';
import 'package:commerce/core/routes/routes.dart';
import 'package:commerce/features/entrypoint/pages/menu/presentation/provider/product_provider.dart';
import 'package:commerce/features/entrypoint/pages/menu/presentation/widgets/category_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(height: 32),
          Text(
            'Choose a category',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 16),
          const CateogoriesGrid()
        ],
      ),
    );
  }
}

class CateogoriesGrid extends StatelessWidget {
  const CateogoriesGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<ProductProvider>(
      builder: (context, provider, child) {
        return Expanded(
            child: FutureBuilder<List<CategoryModel>>(
          future: provider.getCategory(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return const Center(child: Text('No categories found.'));
            }
            return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemCount: provider.categories.length,
                itemBuilder: (context, index) {
                  return CategoryTile(
                    imageLink: snapshot.data![index].image,
                    label: snapshot.data![index].name,
                    backgroundColor: Colors.green,
                    onTap: () {
                      provider.selectCategory(snapshot.data![index].name,
                          snapshot.data![index].id.toString());
                      Navigator.pushNamed(context, RoutesName.categoryDetails);
                    },
                  );
                });
          },
        ));
      },
    );
  }
}
