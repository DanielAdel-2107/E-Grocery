import 'package:commerce/core/constants/constants.dart';
import 'package:flutter/material.dart';

class PackDetails extends StatelessWidget {
  const PackDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.25),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Pack Details',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
            ),
          ),
          /* <---- Items here -----> */
          ...List.generate(
            5,
            (index) => ListTile(
              leading: AspectRatio(
                aspectRatio: 1 / 1,
                child:
                    Image.asset('assets/images/dummy/bundle-pack-details.png'),
              ),
              title: const Text('Cabbage'),
              trailing: Text(
                '2 Kg',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(color: Colors.black),
              ),
            ),
          ),
          const SizedBox(height: CoreDefaults.padding),
        ],
      ),
    );
  }
}
