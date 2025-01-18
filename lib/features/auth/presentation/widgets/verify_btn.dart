import 'package:commerce/features/auth/presentation/widgets/verify_dialog.dart';
import 'package:flutter/material.dart';

class VerifyButton extends StatelessWidget {
  const VerifyButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          showGeneralDialog(
            barrierLabel: 'Dialog',
            barrierDismissible: true,
            context: context,
            pageBuilder: (ctx, anim1, anim2) => const VerifyDialog(),
            transitionBuilder: (ctx, anim1, anim2, child) => ScaleTransition(
              scale: anim1,
              child: child,
            ),
          );
        },
        child: const Text('Verify'),
      ),
    );
  }
}