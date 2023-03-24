import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopbuzzer/helpers/constants.dart';
import 'package:shopbuzzer/views/cart/cart_view.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: kBackgroundColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: kBlackColor,
            size: kIconSize,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.heart,
              color: kBlackColor,
              size: kIconSize,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Boway Leather Bag",
                        style: TextStyle(
                          fontSize: kBigTextSize,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  verticalSpace(height: 15),
                  const Text(
                    "\$178.99",
                    style: TextStyle(
                      fontSize: kMidHeaderTextSize,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  verticalSpace(height: 15),
                  Container(
                    height: 350,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: Colors.grey.shade300, width: 1.0),
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/15.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  verticalSpace(height: 30),
                  const Text(
                    "Select Size",
                    style: TextStyle(
                      fontSize: kBigTextSize,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  verticalSpace(),
                  Row(
                    children: const [
                      SizeBox(
                        size: "S",
                      ),
                      SizeBox(
                        size: "M",
                      ),
                      SizeBox(
                        size: "L",
                      ),
                      SizeBox(
                        size: "XL",
                        active: true,
                      ),
                      SizeBox(
                        size: "XXL",
                      ),
                    ],
                  ),
                  verticalSpace(height: 30),
                  const Text(
                    "Select Color",
                    style: TextStyle(
                      fontSize: kBigTextSize,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  verticalSpace(),
                  Row(
                    children: const [
                      ColorBox(
                        color: Colors.red,
                      ),
                      ColorBox(
                        color: Colors.yellow,
                      ),
                      ColorBox(
                        color: Colors.green,
                      ),
                      ColorBox(
                        color: Colors.black,
                      ),
                      ColorBox(
                        color: Colors.purple,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            verticalSpace(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "\$178.99",
                  style: TextStyle(
                    fontSize: kMidHeaderTextSize,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(routeTransition(const ShoppingCartView()));
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
                    "Add to Cart",
                    style: TextStyle(
                      fontSize: kMidHeaderTextSize,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SizeBox extends StatelessWidget {
  final bool active;
  final String size;
  const SizeBox({
    super.key,
    this.active = false,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: active ? kSecondaryColor : kWhiteColor,
          border: Border.all(color: Colors.grey.shade300, width: 1.0),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: Text(
            size,
            style: TextStyle(
              color: active ? kWhiteColor : kBlackColor,
            ),
          ),
        ),
      ),
    );
  }
}

class ColorBox extends StatelessWidget {
  final bool active;
  final Color color;
  const ColorBox({
    super.key,
    required this.color,
    this.active = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300, width: 1.0),
          borderRadius: BorderRadius.circular(15),
          color: color,
        ),
      ),
    );
  }
}
