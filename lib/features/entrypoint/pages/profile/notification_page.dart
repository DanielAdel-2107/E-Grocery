import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/widgets/back_btn.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackBtn(),
        title: const Text(
          'Notification',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: CoreDefaults.padding),
        children: const [
          NotificationTile(
            imageLink: 'assets/images/setting/notification.png',
            title: 'Gifts Offer',
            subtitle: 'Hot Deal Buy one get free on Offfer Hery...',
            time: 'Now',
          ),
          NotificationTile(
            imageLink: 'assets/images/setting/notification2.png',
            title: 'Coupon Offer',
            subtitle: 'Hot Deal Buy one get free on Offfer Hery...',
            time: '10 Minutes Ago',
          ),
          NotificationTile(
            imageLink: 'assets/images/setting/notification.png',
            title: 'Congratulations',
            subtitle: 'You get your order...',
            time: '15 Minutes Ago',
          ),
          NotificationTile(
            imageLink: 'assets/images/setting/notification2.png',
            title: 'Your Order Cancelled',
            subtitle: 'Hot Deal Buy one get free on Offfer Hery...',
            time: '15 Minutes Ago',
          ),
          NotificationTile(
            imageLink: 'assets/images/setting/notification.png',
            title: 'Great Winter Discounts',
            subtitle: 'Hot Deal Buy one get free on Offfer Hery...',
            time: '15 Minutes Ago',
          ),
          NotificationTile(
            imageLink: 'assets/images/setting/notification2.png',
            title: '20% off vegetables',
            subtitle: 'Hot Deal Buy one get free on Offfer Hery...',
            time: '15 Minutes Ago',
          ),
          NotificationTile(
            imageLink: 'assets/images/setting/notification.png',
            title: 'Great Winter Discounts',
            subtitle: 'Hot Deal Buy one get free on Offfer Hery...',
            time: '15 Minutes Ago',
          ),
          NotificationTile(
            imageLink: 'assets/images/setting/notification2.png',
            title: '20% off vegetables',
            subtitle: 'Hot Deal Buy one get free on Offfer Hery...',
            time: '15 Minutes Ago',
          ),
          NotificationTile(
            imageLink: 'assets/images/setting/notification.png',
            title: 'Congratulations',
            subtitle: 'You get your order...',
            time: '15 Minutes Ago',
          ),
        ],
      ),
    );
  }
}

class NotificationTile extends StatelessWidget {
  const NotificationTile({
    super.key,
    this.imageLink,
    required this.title,
    required this.subtitle,
    required this.time,
  });

  final String? imageLink;
  final String title;
  final String subtitle;
  final String time;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: imageLink != null
                  ? AspectRatio(
                      aspectRatio: 1 / 1,
                      child: Image.asset(imageLink!),
                    )
                  : null,
              title: Text(
                title,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 4),
                  Text(subtitle),
                  const SizedBox(height: 4),
                  Text(
                    time,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 86),
              child: Divider(thickness: 0.1),
            ),
          ],
        ),
      ),
    );
  }
}
