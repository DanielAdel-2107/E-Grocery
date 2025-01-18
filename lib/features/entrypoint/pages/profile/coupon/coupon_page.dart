import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/routes/routes.dart';
import 'package:commerce/core/widgets/back_btn.dart';
import 'package:flutter/material.dart';
import 'components/coupon_card.dart';

class CouponAndOffersPage extends StatelessWidget {
  const CouponAndOffersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackBtn(),
        title: const Text(
          'Offer And Promos',
        ),
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(CoreDefaults.padding),
              child: Text(
                'You Have 5 Coupons to use',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
              ),
            ),
          ),
          const Expanded(child: CouponLists()),
        ],
      ),
    );
  }
}

class CouponLists extends StatelessWidget {
  const CouponLists({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CouponCard(
          title: 'Black\nCoffee',
          discounts: '41%',
          expire: 'Exp-28/12/2020',
          color: const Color(0xFF402FBE),
          onTap: () => Navigator.pushNamed(context, RoutesName.couponDetails),
        ),
        CouponCard(
          title: 'Lifebuoy\nHandwash',
          discounts: '23%',
          couponBackground: CoreImages.couponBackgrounds[1],
          expire: 'Exp-28/12/2020',
          color: const Color(0xFF398FE9),
          onTap: () => Navigator.pushNamed(context, RoutesName.couponDetails),
        ),
        CouponCard(
          title: 'Oreo\nBiscuit',
          discounts: '50%',
          couponBackground: CoreImages.couponBackgrounds[2],
          expire: 'Exp-28/12/2020',
          color: const Color(0xFF30BD83),
          onTap: () => Navigator.pushNamed(context, RoutesName.couponDetails),
        ),
        CouponCard(
          title: 'Tuna\nFish',
          discounts: '18%',
          couponBackground: CoreImages.couponBackgrounds[3],
          expire: 'Exp-28/12/2020',
          color: const Color(0xFF10C4DC),
          onTap: () => Navigator.pushNamed(context, RoutesName.couponDetails),
        ),
      ],
    );
  }
}
