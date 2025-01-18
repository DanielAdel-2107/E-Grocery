import 'package:commerce/features/entrypoint/pages/home/presentation/widgets/recent_search_list.dart';
import 'package:commerce/features/entrypoint/pages/home/presentation/widgets/search_page_header.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SearchPageHeader(),
            SizedBox(height: 8),
            RecentSearchList(),
          ],
        ),
      ),
    );
  }
}