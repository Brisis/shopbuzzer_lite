import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopbuzzer/helpers/constants.dart';
import 'package:shopbuzzer/views/checkout/checkout.dart';
import 'package:shopbuzzer/views/cart/widgets/cart_item.dart';

class ShoppingCartView extends StatelessWidget {
  const ShoppingCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView(
            children: [
              const CartItem(
                image: "assets/images/19.jpg",
                title: "Boway Hoodies",
              ),
              const CartItem(
                image: "assets/images/16.png",
                title: "Boway Men's t-Shirts",
              ),
              const CartItem(
                image: "assets/images/19.jpg",
                title: "Boway Hoodies",
              ),
              const CartItem(
                image: "assets/images/16.png",
                title: "Boway Men's t-Shirts",
              ),
              verticalSpace(height: 15),
            ],
          ),
        ),
        verticalSpace(height: 10),
        const BottomCart(),
      ],
    );
  }
}

class BottomCart extends StatelessWidget {
  const BottomCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.delete,
                color: kRedColor,
                size: kIconSize,
              ),
            ),
          ],
        ),
        verticalSpace(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "Sub Total",
              style: TextStyle(
                fontSize: kMediumTextSize,
                color: kBlackFaded,
                fontWeight: FontWeight.bold,
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
        verticalSpace(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "Shipping",
              style: TextStyle(
                fontSize: kMediumTextSize,
                color: kBlackFaded,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "\$10.00",
              style: TextStyle(
                fontSize: kMediumTextSize,
                color: kBlackColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Divider(
          color: kBlackFaded,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "Total",
              style: TextStyle(
                fontSize: kMediumTextSize,
                color: kBlackFaded,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "\$296.98",
              style: TextStyle(
                fontSize: kMediumTextSize,
                color: kBlackColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        verticalSpace(height: 15),
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(routeTransition(const CheckoutView()));
                },
                style: ButtonStyle(
                  padding:
                      MaterialStateProperty.all(const EdgeInsets.all(10.0)),
                  backgroundColor: MaterialStateProperty.all(kBlackColor),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                child: const Text(
                  "Checkout",
                  style: TextStyle(
                    fontSize: kMidHeaderTextSize,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
