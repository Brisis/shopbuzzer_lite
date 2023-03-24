import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopbuzzer/helpers/constants.dart';
import 'package:shopbuzzer/bin/product.dart';
import 'package:shopbuzzer/views/home_view.dart';

class ProductCard extends StatelessWidget {
  final String image;
  final double imageHeight;
  const ProductCard({
    super.key,
    required this.image,
    required this.imageHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(routeTransition(const ProductView()));
          },
          child: Container(
            height: imageHeight,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300, width: 1.0),
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      routeTransition(
                        const HomeView(),
                      ),
                    );
                  },
                  icon: const Icon(
                    CupertinoIcons.heart,
                    color: kBlackColor,
                    size: kIconSize,
                  ),
                )
              ],
            ),
          ),
        ),
        verticalSpace(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(routeTransition(const ProductView()));
              },
              child: const Text(
                "Casual Jean Shoes",
                style: TextStyle(
                  fontSize: kMediumTextSize,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
        verticalSpace(height: 10),
        const Text(
          "\$178.99",
          style: TextStyle(
            fontSize: kBigTextSize,
            fontFamily: 'ShopHeader',
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
