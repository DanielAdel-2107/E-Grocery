import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/routes/routes.dart';
import 'package:flutter/material.dart';
import 'order_preview_tile.dart';

class CompletedTab extends StatelessWidget {
  const CompletedTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(top: 8),
      children: [
        OrderPreviewTile(
          orderID: '232425627',
          date: '25 Nov',
          status: OrderStatus.confirmed,
          onTap: () => Navigator.pushNamed(context, RoutesName.orderDetails),
        ),
        OrderPreviewTile(
          orderID: '232425627',
          date: '25 Nov',
          status: OrderStatus.processing,
          onTap: () => Navigator.pushNamed(context, RoutesName.orderDetails),
        ),
        OrderPreviewTile(
          orderID: '232425627',
          date: '25 Nov',
          status: OrderStatus.shipped,
          onTap: () => Navigator.pushNamed(context, RoutesName.orderDetails),
        ),
        OrderPreviewTile(
          orderID: '232425627',
          date: '25 Nov',
          status: OrderStatus.delivery,
          onTap: () => Navigator.pushNamed(context, RoutesName.orderDetails),
        ),
        OrderPreviewTile(
          orderID: '232425627',
          date: '25 Nov',
          status: OrderStatus.cancelled,
          onTap: () => Navigator.pushNamed(context, RoutesName.orderDetails),
        ),
      ],
    );
  }
}
