import 'package:commerce/core/constants/constants.dart';
import 'package:flutter/material.dart';
import 'profile_header_options.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /// Background
        Image.asset('assets/images/profile_page_background.png'),

        /// Content
        Column(
          children: [
            AppBar(
              title: const Text('Profile'),
              elevation: 0,
              backgroundColor: Colors.transparent,
              titleTextStyle: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const _UserData(),
            const ProfileHeaderOptions()
          ],
        ),
      ],
    );
  }
}

class _UserData extends StatelessWidget {
  const _UserData();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(CoreDefaults.padding),
      child: Row(
        children: [
          const SizedBox(width: CoreDefaults.padding),
          SizedBox(
            width: 100,
            height: 100,
            child: ClipOval(
              child: AspectRatio(
                  aspectRatio: 1 / 1,
                  child: Image.asset(
                      'assets/images/review/person.png')),
            ),
          ),
          const SizedBox(width: CoreDefaults.padding),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Shakibul Islam',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold, color: Colors.white),
              ),
              const SizedBox(height: 8),
              Text(
                'ID: 1540580',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: Colors.white),
              ),
            ],
          )
        ],
      ),
    );
  }
}
