import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddNewCardRow extends StatelessWidget {
  const AddNewCardRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: CoreDefaults.padding),
      child: Row(
        children: [
          Text(
            'My Card',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, RoutesName.paymentCardAdd);
            },
            icon: SvgPicture.asset(CoreIcons.cardAdd),
          )
        ],
      ),
    );
  }
}
