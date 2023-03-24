import 'package:flutter/material.dart';
import 'package:shopbuzzer/helpers/constants.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

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
        title: const Text(
          "Profile",
          style: TextStyle(
            fontSize: kBigTextSize,
            color: kBlackColor,
            fontWeight: FontWeight.bold,
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
                              image: AssetImage("assets/images/ben.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        verticalSpace(height: 15),
                        const Text(
                          "Benevolent Mudzinganyama",
                          style: TextStyle(
                            color: kBlackColor,
                            fontSize: kBigTextSize,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        verticalSpace(),
                        const Text(
                          "Harare, Zimbabwe",
                          style: TextStyle(
                            color: kBlackFaded,
                            fontSize: kMediumTextSize,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  verticalSpace(height: 50),
                  ListTile(
                    onTap: () {},
                    contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                    dense: true,
                    minLeadingWidth: 20,
                    leading: const Icon(
                      Icons.edit,
                      color: kBlackFaded,
                      size: kIconSize,
                    ),
                    title: const Text(
                      "Edit Profile",
                      style: TextStyle(
                        color: kBlackColor,
                        fontSize: kMediumTextSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Divider(
                    color: kBlackFaded,
                    height: 20,
                  ),
                  ListTile(
                    onTap: () {},
                    contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                    dense: true,
                    minLeadingWidth: 20,
                    leading: const Icon(
                      Icons.payment,
                      color: kBlackFaded,
                      size: kIconSize,
                    ),
                    title: const Text(
                      "Billing Information",
                      style: TextStyle(
                        color: kBlackColor,
                        fontSize: kMediumTextSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Divider(
                    color: kBlackFaded,
                    height: 20,
                  ),
                  ListTile(
                    onTap: () {},
                    contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                    dense: true,
                    minLeadingWidth: 20,
                    leading: const Icon(
                      Icons.history,
                      color: kBlackFaded,
                      size: kIconSize,
                    ),
                    title: const Text(
                      "Shopping History",
                      style: TextStyle(
                        color: kBlackColor,
                        fontSize: kMediumTextSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Divider(
                    color: kBlackFaded,
                    height: 20,
                  ),
                  ListTile(
                    onTap: () {},
                    contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                    dense: true,
                    minLeadingWidth: 20,
                    leading: const Icon(
                      Icons.privacy_tip_outlined,
                      color: kBlackFaded,
                      size: kIconSize,
                    ),
                    title: const Text(
                      "Privacy, Terms and Conditions",
                      style: TextStyle(
                        color: kBlackColor,
                        fontSize: kMediumTextSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Divider(
                    color: kBlackFaded,
                    height: 20,
                  ),
                  ListTile(
                    onTap: () {},
                    contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                    dense: true,
                    minLeadingWidth: 20,
                    leading: const Icon(
                      Icons.phone,
                      color: kBlackFaded,
                      size: kIconSize,
                    ),
                    title: const Text(
                      "Contact Us",
                      style: TextStyle(
                        color: kBlackColor,
                        fontSize: kMediumTextSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Divider(
                    color: kBlackFaded,
                    height: 20,
                  ),
                ],
              ),
            ),
            verticalSpace(height: 15),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(10.0)),
                      backgroundColor: MaterialStateProperty.all(kRedColor),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    child: const Text(
                      "Sign Out",
                      style: TextStyle(
                        fontSize: kMidHeaderTextSize,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
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
