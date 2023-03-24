import 'package:flutter/material.dart';
import 'package:shopbuzzer/helpers/constants.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: kBackgroundColor,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: kBlackColor,
            size: kIconSize,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  RichText(
                    text: const TextSpan(
                      text: "New Recommended ",
                      children: <TextSpan>[
                        TextSpan(
                          text: "Product! ",
                          style: TextStyle(
                            backgroundColor: Color(0xFFC60BF2),
                            color: kWhiteColor,
                            //fontStyle: FontStyle.italic,
                            letterSpacing: 3.0,
                            decoration: TextDecoration.underline,
                            decorationThickness: 2.0,
                          ),
                        ),
                      ],
                      style: TextStyle(
                        color: kBlackColor,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  verticalSpace(height: 30),
                  GestureDetector(
                    onTap: () {},
                    child: Column(
                      children: [
                        Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                            color: kSecondaryColor,
                            border: Border.all(color: kWhiteColor, width: 8.0),
                            borderRadius: BorderRadius.circular(
                              60,
                            ),
                            image: const DecorationImage(
                              image: AssetImage("assets/images/edg.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        verticalSpace(height: 15),
                        const Text(
                          "Edgars, 25km",
                          style: TextStyle(
                            color: kBlackColor,
                            fontSize: kBigTextSize,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  verticalSpace(height: 30),
                  const Text(
                    "Tracey Jones just posted a new product similar to what you usually buy",
                    style: TextStyle(
                      fontSize: kMediumTextSize,
                      color: kBlackFaded,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  verticalSpace(height: 100),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.timer_sharp,
                        color: kPrimaryColor,
                        size: kIconSize,
                      ),
                      Text(
                        "23 minutes",
                        style: TextStyle(
                          color: kBlackColor,
                          fontSize: kBigTextSize,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            verticalSpace(height: 15),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigator.of(context)
                      //     .push(routeTransition(const CheckoutView()));
                    },
                    style: ButtonStyle(
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(10.0)),
                      backgroundColor: MaterialStateProperty.all(kPrimaryColor),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    child: const Text(
                      "Go to Link",
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
        ),
      ),
    );
  }
}
