import 'package:flutter/material.dart';
import 'package:shopbuzzer/helpers/constants.dart';

class DiscoverView extends StatelessWidget {
  const DiscoverView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: Stack(
        children: [
          Container(
            height: 550,
            decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.circular(30.0),
              boxShadow: const [
                BoxShadow(
                  offset: Offset(-20, -20),
                  blurRadius: 60,
                  color: Colors.white,
                ),
                BoxShadow(
                  offset: Offset(20, 20),
                  blurRadius: 60,
                  color: Color(0xFFBEBEBE),
                ),
              ],
            ),
            child: Column(
              children: [
                Container(
                  height: 450,
                  padding: const EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 8, 8, 8),
                    borderRadius: BorderRadius.circular(30.0),
                    image: DecorationImage(
                      image: const AssetImage("assets/images/11.png"),
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
                                  "Blue Sunflower, Ladies Hats",
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
                      )
                    ],
                  ),
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
                )
              ],
            ),
          ),
          Positioned(
            bottom: 30,
            left: 38,
            child: Center(
              child: Container(
                height: 20,
                width: MediaQuery.of(context).size.width * 0.7,
                decoration: BoxDecoration(
                  color: kWhiteColor.withOpacity(0.8),
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                  ),
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(-20, -20),
                      blurRadius: 60,
                      color: Colors.white,
                    ),
                    BoxShadow(
                      offset: Offset(20, 20),
                      blurRadius: 30,
                      color: Color(0xFFBEBEBE),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 15,
            left: 73,
            child: Center(
              child: Container(
                height: 15,
                width: MediaQuery.of(context).size.width * 0.5,
                decoration: BoxDecoration(
                  color: kWhiteColor.withOpacity(0.3),
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                  ),
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(-20, -20),
                      blurRadius: 60,
                      color: Colors.white,
                    ),
                    BoxShadow(
                      offset: Offset(20, 20),
                      blurRadius: 30,
                      color: Color(0xFFBEBEBE),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
