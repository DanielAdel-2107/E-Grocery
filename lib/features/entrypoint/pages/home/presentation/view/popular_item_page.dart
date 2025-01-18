import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/dummy/dummy.dart';
import 'package:commerce/core/routes/routes.dart';
import 'package:commerce/core/widgets/back_btn.dart';
import 'package:commerce/core/widgets/bundle_tile_square.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PopularPackPage extends StatelessWidget {
  const PopularPackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Popular Packs'),
        leading: const BackBtn(),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: CoreDefaults.padding),
              child: GridView.builder(
                padding: const EdgeInsets.only(top: CoreDefaults.padding),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 0.73,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                itemCount: 8,
                itemBuilder: (context, index) {
                  return BundleTileSquare(
                    data: Dummy.bundles.first,
                  );
                },
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                padding: const EdgeInsets.all(CoreDefaults.padding * 2),
                decoration: const BoxDecoration(
                  color: Colors.white60,
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RoutesName.createMyPack);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(CoreIcons.shoppingBag),
                      const SizedBox(width: CoreDefaults.padding),
                      const Text('Create Own Pack'),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}