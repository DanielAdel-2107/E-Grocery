import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/theme/theme.dart';
import 'package:commerce/features/entrypoint/pages/cart/presentation/view/cart_page.dart';
// import 'package:commerce/features/entrypoint/pages/cart/presentation/view/empty_cart_page.dart';
// import 'package:commerce/features/entrypoint/pages/cart/presentation/view/empty_cart_page_2.dart';
import 'package:commerce/features/entrypoint/pages/home/presentation/view/home_page.dart';
import 'package:commerce/features/entrypoint/pages/menu/presentation/view/menu_page.dart';
import 'package:commerce/features/entrypoint/pages/profile/profile_page.dart';
import 'package:commerce/features/entrypoint/pages/save/presentation/view/save_page.dart';
import 'package:commerce/features/entrypoint/presentation/widgets/entry_bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:animations/animations.dart';

class EntryPointView extends StatefulWidget {
  const EntryPointView({super.key});

  @override
  State<EntryPointView> createState() => _EntryPointViewState();
}

class _EntryPointViewState extends State<EntryPointView> {
  /// Current Page
  int currentIndex = 0;

  /// On labelLarge navigation tap
  void onBottomNavigationTap(int index) {
    currentIndex = index;
    setState(() {});
  }

  /// All the pages
  List<Widget> pages = [
    const HomePage(),
    const MenuPage(),
    const CartPage(),
    const SavePage(isHomePage: false),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageTransitionSwitcher(
        transitionBuilder: (child, primaryAnimation, secondaryAnimation) {
          return SharedAxisTransition(
            animation: primaryAnimation,
            secondaryAnimation: secondaryAnimation,
            transitionType: SharedAxisTransitionType.horizontal,
            fillColor: CoreThemeColor.scaffoldBackground,
            child: child,
          );
        },
        duration: CoreDefaults.duration,
        child: pages[currentIndex],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          onBottomNavigationTap(2);
        },
        backgroundColor: CoreThemeColor.primary,
        child: SvgPicture.asset(CoreIcons.cart),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: EntryBottomNav(
        currentIndex: currentIndex,
        onNavTap: onBottomNavigationTap,
      ),
    );
  }
}