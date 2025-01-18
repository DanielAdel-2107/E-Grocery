import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/routes/routes.dart';
import 'package:commerce/core/theme/theme.dart';
import 'package:flutter/material.dart';

class DeliverySuccessfullDialog extends StatelessWidget {
  const DeliverySuccessfullDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: CoreDefaults.borderRadius,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: CoreDefaults.padding * 3,
          horizontal: CoreDefaults.padding,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AspectRatio(
              aspectRatio: 1 / 1,
              child: Image.asset(
                'assets/images/cart/delivered-successfully.png',
                fit: BoxFit.contain,
              ),
            ),
            const Text(
              'Hurrah!!  we just deliverred your',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '#15425050',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(color: Colors.black),
                ),
                const Text(' order Successfully.')
              ],
            ),
            const SizedBox(height: CoreDefaults.padding),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, RoutesName.submitReview);
                },
                child: const Text('Rate The Product'),
              ),
            ),
            const SizedBox(height: CoreDefaults.padding),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.pushNamed(context, RoutesName.entryPoint);
                },
                style: OutlinedButton.styleFrom(
                  foregroundColor: CoreThemeColor.primary,
                  side: const BorderSide(color: CoreThemeColor.primary),
                ),
                child: const Text('Browse Home'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
