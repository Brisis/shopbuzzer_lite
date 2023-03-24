import 'package:flutter/material.dart';
import 'package:shopbuzzer/helpers/constants.dart';

class CartItem extends StatelessWidget {
  final String image;
  final String title;
  const CartItem({
    super.key,
    required this.image,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 120,
            width: 100,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300, width: 1.0),
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          horizontalSpace(),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: kMediumTextSize,
                    //fontWeight: FontWeight.bold,
                  ),
                ),
                verticalSpace(),
                const Text(
                  "Size: M",
                  style: TextStyle(
                    fontSize: kMediumTextSize,
                    color: kBlackFaded,
                  ),
                ),
                verticalSpace(height: 10),
                const Text(
                  "\$178.99",
                  style: TextStyle(
                    fontSize: kBigTextSize,
                    //fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          horizontalSpace(),
          const CartItemButtons(),
        ],
      ),
    );
  }
}

class CartItemButtons extends StatefulWidget {
  const CartItemButtons({super.key});

  @override
  State<CartItemButtons> createState() => _CartItemButtonsState();
}

class _CartItemButtonsState extends State<CartItemButtons> {
  int value = 0;
  @override
  Widget build(BuildContext context) {
    removeCartItem() {
      if (value != 0) {
        setState(() {
          value--;
        });
      }
    }

    addCartItem() {
      if (value != 10) {
        print(value);
        setState(() {
          value++;
        });
        print(value);
      }
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            removeCartItem();
          },
          child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade500, width: 1.0),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Center(
              child: Icon(
                Icons.remove,
                color: kBlackColor,
              ),
            ),
          ),
        ),
        verticalSpace(),
        Text(
          "$value",
          style: const TextStyle(
            fontSize: kMediumTextSize,
            fontWeight: FontWeight.bold,
          ),
        ),
        verticalSpace(),
        GestureDetector(
          onTap: () {
            addCartItem();
          },
          child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade500, width: 1.0),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Center(
              child: Icon(
                Icons.add,
                color: kBlackColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
