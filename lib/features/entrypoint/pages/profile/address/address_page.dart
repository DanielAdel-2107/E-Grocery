import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/routes/routes.dart';
import 'package:commerce/core/theme/theme.dart';
import 'package:commerce/core/widgets/app_radio.dart';
import 'package:commerce/core/widgets/back_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddressPage extends StatelessWidget {
  const AddressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CoreThemeColor.cardColor,
      appBar: AppBar(
        leading: const BackBtn(),
        title: const Text(
          'Delivery Address',
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(CoreDefaults.margin),
        padding: const EdgeInsets.all(CoreDefaults.padding),
        decoration: BoxDecoration(
          color: CoreThemeColor.scaffoldBackground,
          borderRadius: CoreDefaults.borderRadius,
        ),
        child: Stack(
          children: [
            ListView.separated(
              itemBuilder: (context, index) {
                return AddressTile(
                  label: 'Puraton Custom, Chhatak',
                  address: '216/c East Road',
                  number: '+88017100710000',
                  isActive: index == 0,
                );
              },
              itemCount: 5,
              separatorBuilder: (context, index) =>
                  const Divider(thickness: 0.2),
            ),
            Positioned(
              bottom: 16,
              right: 16,
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.pushNamed(context, RoutesName.newAddress);
                },
                backgroundColor: CoreThemeColor.primary,
                splashColor: CoreThemeColor.primary,
                child: const Icon(Icons.add),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AddressTile extends StatelessWidget {
  const AddressTile({
    super.key,
    required this.address,
    required this.label,
    required this.number,
    required this.isActive,
  });

  final String address;
  final String label;
  final String number;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppRadio(isActive: isActive),
          const SizedBox(width: CoreDefaults.padding),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Colors.black,
                    ),
              ),
              const SizedBox(height: 4),
              Text(address),
              const SizedBox(height: 4),
              Text(
                number,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Colors.black,
                    ),
              )
            ],
          ),
          const Spacer(),
          Column(
            children: [
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(CoreIcons.edit),
                constraints: const BoxConstraints(),
                iconSize: 14,
              ),
              const SizedBox(height: CoreDefaults.margin / 2),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(CoreIcons.deleteOutline),
                constraints: const BoxConstraints(),
                iconSize: 14,
              ),
            ],
          )
        ],
      ),
    );
  }
}
