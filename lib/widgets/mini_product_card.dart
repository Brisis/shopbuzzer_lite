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
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: kWhiteColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 150,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/8.png",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "\$286.98",
                style: TextStyle(
                  fontSize: kMediumTextSize,
                  color: kBlackColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // child: Column(
              //   mainAxisAlignment: MainAxisAlignment.start,
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: const [
              //     Text(
              //       "Brown Sunflower, Ladies Hats",
              //       style: TextStyle(
              //         fontSize: kMediumTextSize,
              //         color: kBlackFaded,
              //       ),
              //     ),

              //   ],
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
