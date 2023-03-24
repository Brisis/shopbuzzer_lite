import 'package:flutter/material.dart';
import 'package:shopbuzzer/helpers/constants.dart';

class CheckoutCartItem extends StatelessWidget {
  final String image;
  final String title;
  const CheckoutCartItem({
    super.key,
    required this.image,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 100,
          width: 80,
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
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: kNormalTextSize,
                  //fontWeight: FontWeight.bold,
                ),
              ),
              verticalSpace(),
              const Text(
                "Size: M",
                style: TextStyle(
                  fontSize: kSmallerTextSize,
                  color: kBlackFaded,
                ),
              ),
              verticalSpace(),
              const Text(
                "\$178.99",
                style: TextStyle(
                  fontSize: kNormalTextSize,
                  //fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
