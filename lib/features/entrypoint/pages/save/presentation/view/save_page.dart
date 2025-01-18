import 'package:commerce/core/constants/constants.dart';
import 'package:flutter/material.dart';

class SavePage extends StatelessWidget {
  final bool isHomePage;
  const SavePage({super.key, this.isHomePage = false});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(flex: 2),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            child: Padding(
              padding: const EdgeInsets.all(CoreDefaults.padding * 2),
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child:
                    Image.asset(CoreImages.emptyBox),
              ),
            ),
          ),
          Text(
            'Oppss!',
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          const SizedBox(height: 8),
          const Text('Sorry, you have no product in your wishlist'),
          const Spacer(),
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(CoreDefaults.padding * 2),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Start Adding'),
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}