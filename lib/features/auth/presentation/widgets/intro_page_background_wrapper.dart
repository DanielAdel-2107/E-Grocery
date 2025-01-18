import 'package:flutter/material.dart';

class IntroLoginBackgroundWrapper extends StatelessWidget {
  const IntroLoginBackgroundWrapper({
    super.key,
    required this.imageURL,
  });

  final String imageURL;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imageURL),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black12.withOpacity(.1),
                  Colors.black12,
                  Colors.black54,
                  Colors.black54,
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}