import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/theme/theme.dart';
import 'package:commerce/core/widgets/dotted_divider.dart';
import 'package:flutter/material.dart';

class CouponCard extends StatelessWidget {
  const CouponCard({
    super.key,
    this.couponBackground,
    required this.discounts,
    required this.title,
    required this.expire,
    this.color,
    required this.onTap,
  });

  final String? couponBackground;
  final String discounts;
  final String title;
  final String expire;
  final Color? color;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 162,
          child: Container(
            margin: const EdgeInsets.symmetric(
              vertical: CoreDefaults.padding / 2,
              horizontal: CoreDefaults.padding,
            ),
            decoration: BoxDecoration(
              color: color ?? Colors.blue,
              borderRadius: CoreDefaults.borderRadius,
              image: DecorationImage(
                image: AssetImage(
                  couponBackground ?? CoreImages.couponBackgrounds[1],
                ),
                // opacity: 0.25,
                fit: BoxFit.cover,
              ),
            ),
            child: Material(
              color: Colors.transparent,
              borderRadius: CoreDefaults.borderRadius,
              child: InkWell(
                onTap: onTap,
                borderRadius: CoreDefaults.borderRadius,
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(CoreDefaults.padding),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              discounts,
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall
                                  ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                            ),
                            Text(
                              'Off',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 160,
                      child:
                          DottedDivider(isVertical: true, color: Colors.white),
                    ),
                    Expanded(
                      flex: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(CoreDefaults.padding),
                        child: Text(
                          title,
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                          maxLines: 2,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8,
                        ),
                        child: Column(
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                foregroundColor: CoreThemeColor.primary,
                                backgroundColor: Colors.white,
                                padding: const EdgeInsets.symmetric(
                                  vertical: 0,
                                  horizontal: CoreDefaults.padding * 2,
                                ),
                                shape: const StadiumBorder(),
                              ),
                              child: Text(
                                'Collect',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                      color: CoreThemeColor.primary,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                            const Spacer(),
                            Text(
                              expire,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                    color: Colors.white,
                                  ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          right: 0,
          top: 0,
          bottom: 0,
          child: Container(
            height: 32,
            width: 32,
            decoration: const BoxDecoration(
              color: CoreThemeColor.scaffoldBackground,
              shape: BoxShape.circle,
            ),
          ),
        )
      ],
    );
  }
}
