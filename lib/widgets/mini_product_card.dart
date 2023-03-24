import 'package:flutter/material.dart';
import 'package:shopbuzzer/helpers/constants.dart';
import 'package:shopbuzzer/views/product/product_view.dart';

class MiniProductCard extends StatelessWidget {
  const MiniProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(routeTransition(const ProductView()));
      },
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Image.asset(
                "assets/images/sun.jpeg",
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Brown Sunflower, Ladies Hats",
                    style: TextStyle(
                      fontSize: kMediumTextSize,
                      color: kBlackFaded,
                    ),
                  ),
                  Text(
                    "\$286.98",
                    style: TextStyle(
                      fontSize: kMediumTextSize,
                      color: kBlackColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
