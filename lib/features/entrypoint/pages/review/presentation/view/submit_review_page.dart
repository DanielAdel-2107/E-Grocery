import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/routes/routes.dart';
import 'package:commerce/core/theme/theme.dart';
import 'package:commerce/core/widgets/back_btn.dart';
import 'package:flutter/material.dart';

class SubmitReviewPage extends StatelessWidget {
  const SubmitReviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackBtn(),
        title: const Text('Submit Review'),
      ),
      backgroundColor: CoreThemeColor.cardColor,
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(CoreDefaults.padding),
          padding: const EdgeInsets.symmetric(
            horizontal: CoreDefaults.padding,
            vertical: CoreDefaults.padding * 2,
          ),
          decoration: BoxDecoration(
            color: CoreThemeColor.scaffoldBackground,
            borderRadius: CoreDefaults.borderRadius,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
            SizedBox(
                width: 100,
                height: 100,
                child: AspectRatio(
                  aspectRatio: 1 / 1,
                  child:
                      Image.asset('assets/images/review/person.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(CoreDefaults.padding),
                child: Text(
                  'How would you rate the\nquality of this Products',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  5,
                  (index) => const Icon(
                    Icons.star_rounded,
                    color: Color(0xFFFFC107),
                    size: 30,
                  ),
                ),
              ),
              const SizedBox(height: CoreDefaults.padding * 3),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Leave a your valuable\ncomments',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              const SizedBox(height: CoreDefaults.padding * 2),
              const TextField(
                maxLines: 10,
              ),
              const SizedBox(height: CoreDefaults.padding * 2),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RoutesName.review);
                  },
                  child: const Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
