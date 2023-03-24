import 'package:flutter/material.dart';
import 'package:shopbuzzer/helpers/constants.dart';
import 'package:shopbuzzer/views/product/product_view.dart';

class DiscoverView extends StatelessWidget {
  const DiscoverView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 8, 8, 8),
        borderRadius: BorderRadius.circular(15.0),
        image: DecorationImage(
          image: const AssetImage("assets/images/sunflo.jpeg"),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.5), BlendMode.dstATop),
        ),
      ),
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
                      children: const [
                        Text(
                          "Edgars, 25km",
                          style: TextStyle(
                            color: kWhiteColor,
                            fontSize: kBigTextSize,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
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
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: kWhiteColor,
                          border: Border.all(
                            width: 2.0,
                            color: kRedColor,
                          ),
                          borderRadius: BorderRadius.circular(
                            25,
                          ),
                        ),
                        child: const Icon(
                          Icons.cancel,
                          size: kIconSize,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.green[400],
                          borderRadius: BorderRadius.circular(
                            30,
                          ),
                        ),
                        child: const Icon(
                          Icons.payment,
                          size: kIconSize,
                          color: kWhiteColor,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: kWhiteColor,
                          border: Border.all(
                            width: 2.0,
                            color: Colors.blue,
                          ),
                          borderRadius: BorderRadius.circular(
                            25,
                          ),
                        ),
                        child: Icon(
                          Icons.add_shopping_cart,
                          size: kIconSize,
                          color: Colors.blue[400],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              verticalSpace(height: 15),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context)
                            .push(routeTransition(const ProductView()));
                      },
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.all(10.0)),
                        backgroundColor:
                            MaterialStateProperty.all(kPrimaryColor),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      child: const Text(
                        "View Product",
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
          )
        ],
      ),
    );
  }
}
