import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

const kPrimaryColor = Color(0xFFD61EDA);
const kSecondaryColor = Color(0xFFE839B5);
const kBackgroundColor = Color(0xFFF9F8F6);
const kBlackColor = Colors.black;
const kRedColor = Colors.red;
const kWhiteColor = Colors.white;
const kGreyColor = Color(0xFFEEEEEE);
const kBlackFaded = Colors.black54;
const kDeepBlue = Color(0xFF2F80ED);

const kHeaderTextSize = 38.0;
const kHeaderSubTextSize = 34.0;
const kSubHeaderTextSize = 28.0;
const kMidHeaderTextSize = 20.0;
const kBigTextSize = 18.0;
const kMediumTextSize = 15.0;
const kNormalTextSize = 13.0;
const kSmallerTextSize = 12.0;

const kIconSize = 30.0;

SizedBox verticalSpace({double height = 8.0}) {
  return SizedBox(height: height);
}

SizedBox horizontalSpace({double width = 8.0}) {
  return SizedBox(width: width);
}

PageTransition routeTransition(Widget screen) {
  return PageTransition(
    child: screen,
    type: PageTransitionType.fade,
    duration: const Duration(),
  );
}
