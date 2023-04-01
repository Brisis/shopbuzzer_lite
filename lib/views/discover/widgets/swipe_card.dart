import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/material.dart';
import 'package:shopbuzzer/helpers/constants.dart';
import 'package:shopbuzzer/views/checkout/checkout.dart';
import 'package:shopbuzzer/views/discover/widgets/swipe_buttons.dart';
import 'package:shopbuzzer/views/product/product_view.dart';
import 'package:shopbuzzer/views/seller/seller_view.dart';

class ProductSwipeCard extends StatelessWidget {
  final AppinioSwiperController controller;
  final String image;

  const ProductSwipeCard({
    super.key,
    required this.controller,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(routeTransition(const ProductView()));
          },
          child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 8, 8, 8),
              borderRadius: BorderRadius.circular(15.0),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.5), BlendMode.dstATop),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: const Text(
                      "Discount at 25%",
                      style: TextStyle(
                        color: kWhiteColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context)
                                    .push(routeTransition(const SellerView()));
                              },
                              child: const Text(
                                "Edgars, 25km",
                                style: TextStyle(
                                  color: kWhiteColor,
                                  fontSize: kBigTextSize,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const Text(
                              "Brown Sunflower, Ladies Hats",
                              style: TextStyle(
                                color: kWhiteColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      horizontalSpace(width: 10),
                      Container(
                        padding: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: const Text(
                          "\$2.99",
                          style: TextStyle(
                            color: kWhiteColor,
                            fontSize: kMediumTextSize,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        swipeLeftButton(controller),
                        swipeInButton(
                          () => {
                            Navigator.of(context)
                                .push(routeTransition(const CheckoutView()))
                          },
                        ),
                        swipeRightButton(controller),
                        //unswipeButton(controller),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
