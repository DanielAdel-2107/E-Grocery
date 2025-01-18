import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/routes/routes.dart';
import 'package:flutter/material.dart';

class VerifyDialog extends StatelessWidget {
  const VerifyDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: CoreDefaults.borderRadius),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: CoreDefaults.padding * 3,
          horizontal: CoreDefaults.padding,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.35,
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child: Image.asset(
                  CoreImages.verified,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(height: CoreDefaults.padding),
            Text(
              'Verified!',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: CoreDefaults.padding),
            const Text(
              'Hurrah!!  You have successfully\nverified the account.',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: CoreDefaults.padding),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () =>
                    Navigator.pushNamedAndRemoveUntil(context, RoutesName.entryPoint, (Route<dynamic> route) => false),
                child: const Text('Browse Home'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}