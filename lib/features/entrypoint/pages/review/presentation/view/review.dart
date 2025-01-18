import 'package:commerce/core/widgets/back_btn.dart';
import 'package:commerce/features/entrypoint/pages/review/presentation/widgets/review_lists.dart';
import 'package:commerce/features/entrypoint/pages/review/presentation/widgets/review_overview.dart';
import 'package:flutter/material.dart';

class ReviewPage extends StatelessWidget {
  const ReviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackBtn(),
        title: const Text('Review'),
      ),
      body: const Column(
        children: [
          ReviewOverview(),
          Divider(thickness: 0.1),
          ReviewLists(),
        ],
      ),
    );
  }
}