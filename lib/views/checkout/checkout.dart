import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopbuzzer/helpers/constants.dart';
import 'package:shopbuzzer/widgets/checkout_cart_iten.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key});

  @override
  Widget build(BuildContext context) {
    List<CheckoutCartItem> cartItems = [
      CheckoutCartItem(
        image: "assets/images/19.jpg",
        title: "Boway Hoodies",
      ),
      CheckoutCartItem(
        image: "assets/images/16.png",
        title: "Boway Men's t-Shirts",
      ),
    ];
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: kBackgroundColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: kBlackColor,
            size: kIconSize,
          ),
        ),
        title: Center(
          child: Text(
            "Checkout",
            style: TextStyle(
              fontSize: kBigTextSize,
              fontWeight: FontWeight.bold,
              color: kBlackColor.withOpacity(0.7),
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
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
                  const Text(
                    "Delivery Address",
                    style: TextStyle(
                      fontSize: kBigTextSize,
                      // fontFamily: 'ShopHeader',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  verticalSpace(height: 15),
                  ListTile(
                    onTap: () {},
                    contentPadding: EdgeInsets.zero,
                    leading: Container(
                      height: 70,
                      width: 60,
                      decoration: BoxDecoration(
                        color: kWhiteColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.location_on_outlined,
                          color: kBlackColor,
                          size: kIconSize,
                        ),
                      ),
                    ),
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        "20845 Oakridge Farm Lane",
                        style: TextStyle(
                          fontSize: kMediumTextSize,
                          color: kBlackColor.withOpacity(0.8),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    subtitle: const Text(
                      "New York (NYC)",
                      style: TextStyle(
                        fontSize: kMediumTextSize,
                        color: kBlackFaded,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      color: kBlackFaded,
                      size: kIconSize,
                    ),
                  ),
                  verticalSpace(height: 30),
                  const Text(
                    "Payment Method",
                    style: TextStyle(
                      fontSize: kBigTextSize,
                      // fontFamily: 'ShopHeader',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  verticalSpace(height: 15),
                  const PaymentItem(
                    title: "Buzzer Wallet",
                    accountNumber: ".... .... 2781 9091",
                    icon: Icons.noise_aware,
                  ),
                  const PaymentItem(
                    title: "Master Card",
                    accountNumber: ".... .... 2781 9091",
                    icon: Icons.card_membership,
                  ),
                  const PaymentItem(
                    title: "Pay Now",
                    accountNumber: ".... .... 2781 9091",
                    icon: Icons.paypal,
                  ),
                  verticalSpace(height: 15),
                  ListTile(
                    onTap: () {},
                    contentPadding: EdgeInsets.zero,
                    leading: const Text(
                      "My Cart",
                      style: TextStyle(
                        fontSize: kBigTextSize,
                        color: kBlackColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      color: kBlackFaded,
                      size: kIconSize,
                    ),
                  ),
                  verticalSpace(height: 15),
                  SizedBox(
                    height: 120,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: cartItems.length,
                      itemBuilder: (context, index) {
                        return SizedBox(
                          width: 160,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: cartItems[index],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            BottomCart(),
          ],
        ),
      ),
    );
  }
}

class BottomCart extends StatelessWidget {
  const BottomCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "Total",
              style: TextStyle(
                fontSize: kMediumTextSize,
                color: kBlackFaded,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "\$296.98",
              style: TextStyle(
                fontSize: kMidHeaderTextSize,
                color: kBlackColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        verticalSpace(height: 15),
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(routeTransition(const CheckoutView()));
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
                  "Pay Now",
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
    );
  }
}

class PaymentItem extends StatelessWidget {
  final String title;
  final String accountNumber;
  final IconData icon;
  const PaymentItem({
    super.key,
    required this.title,
    required this.accountNumber,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: ListTile(
        onTap: () {},
        contentPadding: EdgeInsets.zero,
        leading: Container(
          height: 70,
          width: 60,
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Icon(
              icon,
              color: kBlackColor,
              size: kIconSize,
            ),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            title,
            style: TextStyle(
              fontSize: kMediumTextSize,
              color: kBlackColor.withOpacity(0.8),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        subtitle: Text(
          accountNumber,
          style: const TextStyle(
            fontSize: kMediumTextSize,
            color: kBlackFaded,
            fontWeight: FontWeight.w600,
          ),
        ),
        trailing: const Icon(
          Icons.circle_outlined,
          color: kBlackFaded,
          size: kIconSize,
        ),
      ),
    );
  }
}
