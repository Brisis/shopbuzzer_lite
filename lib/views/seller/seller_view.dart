import 'package:flutter/material.dart';
import 'package:shopbuzzer/helpers/constants.dart';
import 'package:shopbuzzer/widgets/mini_product_card.dart';

class SellerView extends StatelessWidget {
  const SellerView({super.key});

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
          "Seller Profile",
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
                              image: AssetImage("assets/images/edg.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        verticalSpace(height: 15),
                        const Text(
                          "Edgars",
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            "8",
                            style: TextStyle(
                              color: kBlackColor,
                              fontSize: kMidHeaderTextSize,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Products",
                            style: TextStyle(
                              color: kBlackFaded,
                              fontSize: kMediumTextSize,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            "28",
                            style: TextStyle(
                              color: kBlackColor,
                              fontSize: kMidHeaderTextSize,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Reviews",
                            style: TextStyle(
                              color: kBlackFaded,
                              fontSize: kMediumTextSize,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            "< 23km",
                            style: TextStyle(
                              color: kBlackColor,
                              fontSize: kMidHeaderTextSize,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Distance",
                            style: TextStyle(
                              color: kBlackFaded,
                              fontSize: kMediumTextSize,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  verticalSpace(height: 30),
                  const Text(
                    "Complete Catalogue",
                    style: TextStyle(
                      color: kBlackColor,
                      fontSize: kBigTextSize,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  verticalSpace(),
                  SizedBox(
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 2,
                        crossAxisSpacing: 2,
                        crossAxisCount: 2,
                        childAspectRatio: 0.75,
                      ),
                      itemCount: 8,
                      itemBuilder: (BuildContext context, int index) {
                        return const MiniProductCard();
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {},
            heroTag: null,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  25,
                ),
              ),
              child: const Icon(
                Icons.email_outlined,
                size: kIconSize,
                color: kWhiteColor,
              ),
            ),
          ),
          verticalSpace(),
          FloatingActionButton(
            onPressed: () {},
            heroTag: null,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  25,
                ),
              ),
              child: const Icon(
                Icons.reviews_outlined,
                size: kIconSize,
                color: kWhiteColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
