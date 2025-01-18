import 'package:commerce/core/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RecentSearchList extends StatelessWidget {
  const RecentSearchList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: CoreDefaults.padding),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Recent Search',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Colors.black,
                    ),
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.only(top: 16),
              itemBuilder: (context, index) {
                return const _SearchHistoryTile();
              },
              separatorBuilder: (context, index) => const Divider(
                thickness: 0.1,
              ),
              itemCount: 16,
            ),
          )
        ],
      ),
    );
  }
}

class _SearchHistoryTile extends StatelessWidget {
  const _SearchHistoryTile();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 16,
        ),
        child: Row(
          children: [
            Text(
              'Vegetables',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const Spacer(),
            SvgPicture.asset(CoreIcons.searchTileArrow),
          ],
        ),
      ),
    );
  }
}