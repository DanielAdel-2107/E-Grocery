import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/routes/routes.dart';
import 'package:commerce/features/entrypoint/pages/home/presentation/widgets/ad_space.dart';
import 'package:commerce/features/entrypoint/pages/home/presentation/widgets/our_new_item.dart';
import 'package:commerce/features/entrypoint/pages/home/presentation/widgets/popular_packs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              leading: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RoutesName.drawerPage);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFF2F6F3),
                    shape: const CircleBorder(),
                  ),
                  child: SvgPicture.asset(CoreIcons.sidebarIcon),
                ),
              ),
              floating: true,
              title: SvgPicture.asset(
                CoreImages.appLogoSvg,
                height: 32.h,
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 8, top: 4, bottom: 4),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, RoutesName.search);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFF2F6F3),
                      shape: const CircleBorder(),
                    ),
                    child: SvgPicture.asset(CoreIcons.search),
                  ),
                ),
              ],
            ),
            const SliverToBoxAdapter(
              child: AdSpace(),
            ),
            const SliverToBoxAdapter(
              child: PopularPacks(),
            ),
            const SliverPadding(
              padding: EdgeInsets.symmetric(vertical: CoreDefaults.padding),
              sliver: SliverToBoxAdapter(
                child: OurNewItem(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}