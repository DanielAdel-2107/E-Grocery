import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/widgets/review_stars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ReviewTile extends StatelessWidget {
  const ReviewTile({
    super.key,
    required this.review,
    required this.starsGiven,
    required this.userName,
    required this.userPicture,
    required this.time,
    required this.isFavourite,
    required this.totalLikes,
  });

  final String review;
  final int starsGiven;
  final String userName;
  final String userPicture;
  final String time;
  final bool isFavourite;
  final int totalLikes;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(CoreDefaults.padding),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 60,
            height: 60,
            child: ClipOval(
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child: Image.asset(userPicture),
              ),
            ),
          ),
          const SizedBox(width: CoreDefaults.padding),
          Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      userName,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(color: Colors.black),
                    ),
                    const Spacer(),
                    Text(
                      time,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                const ReviewStars(starsGiven: 3),
                const SizedBox(height: 8),
                Text(review),
                const SizedBox(height: CoreDefaults.padding),
                Row(
                  children: [
                    Row(
                      children: [
                        isFavourite
                            ? SvgPicture.asset(CoreIcons.heartActive)
                            : SvgPicture.asset(CoreIcons.heartOutlined),
                        const SizedBox(width: CoreDefaults.padding / 2),
                        Text('$totalLikes Like')
                      ],
                    ),
                    const SizedBox(width: CoreDefaults.padding),
                    Row(
                      children: [
                        SvgPicture.asset(CoreIcons.reply),
                        const SizedBox(width: CoreDefaults.padding / 2),
                        const Text('Reply')
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
