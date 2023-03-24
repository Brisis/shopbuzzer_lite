import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopbuzzer/helpers/constants.dart';
import 'package:shopbuzzer/views/cart/cart_view.dart';
import 'package:shopbuzzer/widgets/product_card.dart';

class HomeDView extends StatelessWidget {
  const HomeDView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> categoryItems = [
      "All",
      "Winter",
      "Women",
      "Eyewear",
      "Men",
      "Luxury"
    ];
    List<String> products = [
      "assets/images/1.png",
      "assets/images/19.jpg",
      "assets/images/22.jpg",
      "assets/images/7.png",
      "assets/images/5.png",
    ];
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: kBackgroundColor,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            CupertinoIcons.rectangle_3_offgrid,
            color: kBlackColor,
            size: kIconSize,
          ),
        ),
        title: Center(
          child: Row(
            children: [
              Image.asset(
                "assets/images/logo.png",
                width: MediaQuery.of(context).size.width * 0.45,
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: kBlackColor,
              size: kIconSize,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context)
                  .push(routeTransition(const ShoppingCartView()));
            },
            icon: Icon(
              CupertinoIcons.cart,
              color: kBlackColor,
              size: kIconSize,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            // const Text(
            //   "Simply the Best!",
            //   style: TextStyle(
            //     fontSize: kHeaderSubTextSize,
            //     fontFamily: 'ShopHeader',
            //     fontWeight: FontWeight.w600,
            //     decoration: TextDecoration.underline,
            //   ),
            // ),

            //verticalSpace(height: 10),

            SizedBox(
              height: 40,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: categoryItems.length,
                itemBuilder: (context, index) {
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: CategoryOption(
                        title: categoryItems[index],
                        active: categoryItems[index] == "Women",
                      ),
                    ),
                  );
                },
              ),
            ),
            verticalSpace(height: 30),
            Row(
              children: [
                Image.asset(
                  "assets/images/5.jpeg",
                  width: MediaQuery.of(context).size.width * 0.9,
                ),
              ],
            ),

            verticalSpace(height: 30),
            SizedBox(
              height: 260,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: 180,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: ProductCard(
                        image: products[index],
                        imageHeight: 200.0,
                      ),
                    ),
                  );
                },
              ),
            ),
            verticalSpace(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Most Popular",
                  style: TextStyle(
                    fontSize: kBigTextSize,
                    // fontFamily: 'ShopHeader',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "See all",
                    style: TextStyle(
                      fontSize: 15,
                      color: kSecondaryColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 220,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: 150,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: ProductCard(
                        image: products[index],
                        imageHeight: 150.0,
                      ),
                    ),
                  );
                },
              ),
            ),
            verticalSpace(height: 30),
            const Text(
              "Copyright @2023 ShopBuzzer Ltd.",
              style: TextStyle(
                fontSize: kSmallerTextSize,
                color: kBlackColor,
                decoration: TextDecoration.underline,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryOption extends StatelessWidget {
  final String title;
  final bool active;
  const CategoryOption({
    super.key,
    required this.title,
    this.active = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(routeTransition(const HomeDView()));
      },
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: active ? kBlackColor : kGreyColor.withOpacity(0.3),
          border: Border.all(color: Colors.grey.shade400, width: 1.0),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: kNormalTextSize,
            fontWeight: FontWeight.bold,
            color: active ? kWhiteColor : kBlackColor,
          ),
        ),
      ),
    );
  }
}
