import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/dummy/dummy.dart';
import 'package:commerce/core/routes/routes.dart';
import 'package:commerce/core/widgets/bundle_tile_square.dart';
import 'package:commerce/core/widgets/tile_and_action_button.dart';
import 'package:flutter/material.dart';

class PopularPacks extends StatelessWidget {
  const PopularPacks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleAndActionButton(
          title: 'Popular Packs',
          onTap: () => Navigator.pushNamed(context, RoutesName.popularItems),
        ),
        SingleChildScrollView(
          padding: const EdgeInsets.only(left: CoreDefaults.padding),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              Dummy.bundles.length,
              (index) => Padding(
                padding: const EdgeInsets.only(right: CoreDefaults.padding),
                child: BundleTileSquare(data: Dummy.bundles[index]),
              ),
            ),
          ),
        ),
      ],
    );
  }
}