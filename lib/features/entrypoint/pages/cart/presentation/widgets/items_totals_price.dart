import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/model/product_model.dart';
import 'package:commerce/core/widgets/dotted_divider.dart';
import 'package:commerce/features/entrypoint/pages/cart/presentation/widgets/item_row.dart';
import 'package:flutter/material.dart';

class ItemTotalsAndPrice extends StatelessWidget {
  const ItemTotalsAndPrice({
    super.key,
    required this.products,
    required this.totalPrice,
  });
  final Set<ProductModel> products;
  final String totalPrice;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(CoreDefaults.padding),
      child: Column(
        children: [
          ItemRow(
            title: 'Total Item',
            value: products.length.toString(),
          ),
          const ItemRow(
            title: 'Weight',
            value: '33 Kg',
          ),
          // استخدم `...` لتفكيك القائمة داخل `Column`
          ...products.map((e) => ItemRow(
                value: "${e.count! * e.price}", // تأكد أن القيمة نصية
              )),
          const DottedDivider(),
          ItemRow(
            title: 'Total Price',
            value: totalPrice,
          ),
        ],
      ),
    );
  }
}
