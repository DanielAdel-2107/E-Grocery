import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/theme/theme.dart';
import 'package:commerce/features/entrypoint/presentation/widgets/entry_bottom_nav_item.dart';
import 'package:flutter/material.dart';

class EntryBottomNav extends StatelessWidget {
  const EntryBottomNav({
    super.key,
    required this.currentIndex,
    required this.onNavTap,
  });

  final int currentIndex;
  final void Function(int) onNavTap;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: CoreDefaults.margin,
      color: CoreThemeColor.scaffoldBackground,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          EntryBottomNavItem(
            name: 'Home',
            iconLocation: CoreIcons.home,
            isActive: currentIndex == 0,
            onTap: () => onNavTap(0),
          ),
          EntryBottomNavItem(
            name: 'Menu',
            iconLocation: CoreIcons.menu,
            isActive: currentIndex == 1,
            onTap: () => onNavTap(1),
          ),
          const Padding(
            padding: EdgeInsets.all(CoreDefaults.padding * 2),
            child: SizedBox(width: CoreDefaults.margin),
          ),
          /* <---- We have to leave this 3rd index (2) for the cart item -----> */

          EntryBottomNavItem(
            name: 'Save',
            iconLocation: CoreIcons.save,
            isActive: currentIndex == 3,
            onTap: () => onNavTap(3),
          ),
          EntryBottomNavItem(
            name: 'Profile',
            iconLocation: CoreIcons.profile,
            isActive: currentIndex == 4,
            onTap: () => onNavTap(4),
          ),
        ],
      ),
    );
  }
}