import 'package:commerce/core/theme/theme.dart';
import 'package:commerce/core/widgets/back_btn.dart';
import 'package:flutter/material.dart';
import 'components/custom_tab_label.dart';
import 'components/tab_all.dart';
import 'components/tab_completed.dart';
import 'components/tab_running.dart';

class AllOrderPage extends StatelessWidget {
  const AllOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: const BackBtn(),
          title: const Text('My Order'),
          bottom: const TabBar(
            physics: NeverScrollableScrollPhysics(),
            tabs: [
              CustomTabLabel(label: 'All', value: '(58)'),
              CustomTabLabel(label: 'Running', value: '(14)'),
              CustomTabLabel(label: 'Previous', value: '(44)'),
            ],
          ),
        ),
        body: Container(
          color: CoreThemeColor.cardColor,
          child: const TabBarView(
            children: [
              AllTab(),
              RunningTab(),
              CompletedTab(),
            ],
          ),
        ),
      ),
    );
  }
}
