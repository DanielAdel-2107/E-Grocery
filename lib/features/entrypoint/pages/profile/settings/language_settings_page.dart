import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/theme/theme.dart';
import 'package:commerce/core/widgets/app_settings_list_tile.dart';
import 'package:commerce/core/widgets/back_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LanguageSettingsPage extends StatelessWidget {
  const LanguageSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackBtn(),
        title: const Text(
          'Language Settings',
        ),
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
          child: const Column(
            children: [
              _SearchField(),
              _SuggestedLanguage(),
              _AllCountries(),
            ],
          ),
        ),
      ),
    );
  }
}

class _AllCountries extends StatelessWidget {
  const _AllCountries();

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: CoreDefaults.padding),
        Text('All Countries/Regions'),
        SizedBox(height: CoreDefaults.padding),
        AppSettingsListTile(label: 'Bangladesh'),
        AppSettingsListTile(label: 'Canada'),
        AppSettingsListTile(label: 'Cuba'),
        AppSettingsListTile(label: 'Spain'),
        AppSettingsListTile(label: 'Australia'),
        AppSettingsListTile(label: 'Greece'),
      ],
    );
  }
}

class _SuggestedLanguage extends StatelessWidget {
  const _SuggestedLanguage();

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: CoreDefaults.padding),
        Text('Suggested'),
        SizedBox(height: CoreDefaults.padding),
        AppSettingsListTile(label: 'Bangladesh'),
        AppSettingsListTile(label: 'Canada'),
        AppSettingsListTile(label: 'Australia'),
        AppSettingsListTile(
          label: 'United States',
          trailing: Icon(
            Icons.check,
            color: Colors.green,
          ),
        ),
      ],
    );
  }
}

class _SearchField extends StatelessWidget {
  const _SearchField();

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        inputDecorationTheme: CoreInputTheme.secondaryInputDecorationTheme,
      ),
      child: TextField(
        decoration: InputDecoration(
          labelText: 'Search',
          hintText: 'Type a word',
          suffixIcon: Padding(
            padding: const EdgeInsets.all(CoreDefaults.padding),
            child: SvgPicture.asset(CoreIcons.search),
          ),
          suffixIconConstraints: const BoxConstraints(),
        ),
      ),
    );
  }
}
