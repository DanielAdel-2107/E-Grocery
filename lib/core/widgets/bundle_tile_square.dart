import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/dummy/dummy.dart';
import 'package:commerce/core/routes/routes.dart';
import 'package:commerce/core/theme/theme.dart';
import 'package:flutter/material.dart';

class BundleTileSquare extends StatelessWidget {
  const BundleTileSquare({
    super.key,
    required this.data,
  });

  final BundleModel data;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: CoreThemeColor.scaffoldBackground,
      borderRadius: CoreDefaults.borderRadius,
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, RoutesName.bundleProduct);
        },
        borderRadius: CoreDefaults.borderRadius,
        child: Container(
          width: 176,
          padding: const EdgeInsets.symmetric(horizontal: CoreDefaults.padding),
          decoration: BoxDecoration(
            border: Border.all(width: 0.1, color: CoreThemeColor.placeholder),
            borderRadius: CoreDefaults.borderRadius,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: AspectRatio(
                  aspectRatio: 1 / 1,
                  child: Image.asset(
                    data.cover,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data.name,
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(color: Colors.black),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    data.itemNames.join(','),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Text(
                    '\$${data.price.toInt()}',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(color: Colors.black),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    '\$${data.mainPrice}',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          decoration: TextDecoration.lineThrough,
                        ),
                  ),
                  const Spacer(),
                ],
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}