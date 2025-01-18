import 'package:commerce/core/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(CoreDefaults.padding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Name Field
          const Text("Card Name"),
          const SizedBox(height: 8),
          TextFormField(
            keyboardType: TextInputType.number,
            // validator: Validators.requiredWithFieldName('Card'),
            textInputAction: TextInputAction.next,
          ),
          const SizedBox(height: CoreDefaults.padding),

          // Number Field
          const Text("Card Number"),
          const SizedBox(height: 8),
          TextFormField(
            keyboardType: TextInputType.number,
            // validator: Validators.requiredWithFieldName('Card Number'),
            textInputAction: TextInputAction.next,
          ),
          const SizedBox(height: CoreDefaults.padding),

          /* <---- Expiration Date And CVV -----> */
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Number Field
                    const Text("Expiration Date"),
                    const SizedBox(height: 8),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      // validator: Validators.requiredWithFieldName('Card'),
                      textInputAction: TextInputAction.next,
                    ),
                    const SizedBox(height: CoreDefaults.padding),
                  ],
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Number Field
                    const Text("CVV"),
                    const SizedBox(height: 8),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      // validator: Validators.requiredWithFieldName('Card'),
                      textInputAction: TextInputAction.next,
                    ),
                    const SizedBox(height: CoreDefaults.padding),
                  ],
                ),
              ),
            ],
          ),

          Row(
            children: [
              Text(
                'Remember My Card Details',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: Colors.black),
              ),
              const Spacer(),
              CupertinoSwitch(value: true, onChanged: (v) {})
            ],
          )
        ],
      ),
    );
  }
}
