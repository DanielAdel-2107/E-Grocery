import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/theme/theme.dart';
import 'package:flutter/material.dart';

class OrderPreviewTile extends StatelessWidget {
  const OrderPreviewTile({
    super.key,
    required this.orderID,
    required this.date,
    required this.status,
    required this.onTap,
  });

  final String orderID;
  final String date;
  final OrderStatus status;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: CoreDefaults.padding,
        vertical: CoreDefaults.padding / 2,
      ),
      child: Material(
        color: Colors.white,
        borderRadius: CoreDefaults.borderRadius,
        child: InkWell(
          onTap: onTap,
          borderRadius: CoreDefaults.borderRadius,
          child: Container(
            padding: const EdgeInsets.all(CoreDefaults.padding),
            decoration: BoxDecoration(
              borderRadius: CoreDefaults.borderRadius,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    const Text('Order ID:'),
                    const SizedBox(width: 5),
                    Text(
                      '2324252627',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(color: Colors.black),
                    ),
                    const Spacer(),
                    const Text('25 Nov'),
                  ],
                ),
                Row(
                  children: [
                    const Text('Status'),
                    Expanded(
                      child: RangeSlider(
                        values: RangeValues(0, _orderSliderValue()),
                        max: 3,
                        divisions: 3,
                        onChanged: (v) {},
                        activeColor: _orderColor(),
                        inactiveColor: CoreThemeColor.placeholder.withOpacity(0.2),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Opacity(
                            opacity: status == OrderStatus.confirmed ? 1 : 0,
                            child: Text(
                              'Confirmed',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(color: _orderColor()),
                            ),
                          ),
                          Opacity(
                            opacity: status == OrderStatus.processing ? 1 : 0,
                            child: Text(
                              'Processing',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(color: _orderColor()),
                            ),
                          ),
                          Opacity(
                            opacity: status == OrderStatus.shipped ? 1 : 0,
                            child: Text(
                              'Shipped',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(color: _orderColor()),
                            ),
                          ),
                          Opacity(
                            opacity: status == OrderStatus.delivery ||
                                    status == OrderStatus.cancelled
                                ? 1
                                : 0,
                            child: Text(
                              status == OrderStatus.delivery
                                  ? 'Delivery'
                                  : 'Cancelled',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(color: _orderColor()),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  double _orderSliderValue() {
    switch (status) {
      case OrderStatus.confirmed:
        return 0;
      case OrderStatus.processing:
        return 1;
      case OrderStatus.shipped:
        return 2;
      case OrderStatus.delivery:
        return 3;
      case OrderStatus.cancelled:
        return 3;

      default:
        return 0;
    }
  }

  Color _orderColor() {
    switch (status) {
      case OrderStatus.confirmed:
        return const Color(0xFF4044AA);
      case OrderStatus.processing:
        return const Color(0xFF41A954);
      case OrderStatus.shipped:
        return const Color(0xFFE19603);
      case OrderStatus.delivery:
        return const Color(0xFF41AA55);
      case OrderStatus.cancelled:
        return const Color(0xFFFF1F1F);

      default:
        return Colors.red;
    }
  }
}
