import 'package:flutter/material.dart';
import 'package:shopbuzzer/helpers/constants.dart';
import 'package:shopbuzzer/views/auth/register.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "ShopBuzzer",
                style: TextStyle(
                  fontSize: 48,
                  fontFamily: 'ShopHeader',
                  fontWeight: FontWeight.bold,
                ),
              ),
              verticalSpace(height: 100),
              Container(
                height: 200.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/logo_sm.png"),
                  ),
                ),
              ),
              verticalSpace(height: 100),
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Clothing",
                        style: TextStyle(
                          fontSize: kMediumTextSize,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      verticalSpace(),
                      const Text(
                        "Homeware",
                        style: TextStyle(
                          fontSize: kMediumTextSize,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      verticalSpace(),
                      const Text(
                        "Machinery",
                        style: TextStyle(
                          fontSize: kMediumTextSize,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      verticalSpace(),
                      const Text(
                        "Electronics",
                        style: TextStyle(
                          fontSize: kMediumTextSize,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      verticalSpace(),
                      const Text(
                        "150+ Categories",
                        style: TextStyle(
                          fontSize: kMediumTextSize,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      verticalSpace(),
                    ],
                  ),
                  horizontalSpace(width: 20),
                  Container(
                    height: 150.0,
                    width: 1.5,
                    decoration: const BoxDecoration(
                      color: kSecondaryColor,
                    ),
                  ),
                  horizontalSpace(width: 20),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          routeTransition(
                            const RegistrationView(),
                          ),
                        );
                      },
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                          const EdgeInsets.all(10.0),
                        ),
                        backgroundColor: MaterialStateProperty.all(kBlackColor),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                      child: const Text(
                        "Get Started",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
