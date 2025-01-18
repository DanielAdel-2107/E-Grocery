import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/routes/routes.dart';
import 'package:commerce/core/theme/theme.dart';
import 'package:commerce/core/utils/ui_util.dart';
import 'package:commerce/core/widgets/back_btn.dart';
import 'package:commerce/features/entrypoint/pages/home/presentation/widgets/product_filter_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchPageHeader extends StatelessWidget {
  const SearchPageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(CoreDefaults.padding),
      child: Row(
        children: [
          const BackBtn(),
          const SizedBox(width: 16),
          Expanded(
            child: Stack(
              children: [
                /// Search Box
                Form(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(CoreDefaults.padding),
                        child: SvgPicture.asset(
                          CoreIcons.search,
                          colorFilter: const ColorFilter.mode(
                            CoreThemeColor.primary,
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                      prefixIconConstraints: const BoxConstraints(),
                      contentPadding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                    ),
                    textInputAction: TextInputAction.search,
                    autofocus: true,
                    onChanged: (String? value) {},
                    onFieldSubmitted: (v) {
                      Navigator.pushNamed(context, RoutesName.searchResult);
                    },
                  ),
                ),
                Positioned(
                  right: 0,
                  height: 56,
                  child: SizedBox(
                    width: 56,
                    child: ElevatedButton(
                      onPressed: () {
                        UiUtil.openBottomSheet(
                          context: context,
                          widget: const ProductFiltersDialog(),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: SvgPicture.asset(CoreIcons.filter),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}