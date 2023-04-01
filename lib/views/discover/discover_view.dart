import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:shopbuzzer/helpers/constants.dart';
import 'package:shopbuzzer/views/discover/widgets/swipe_card.dart';

class DiscoverView extends StatefulWidget {
  const DiscoverView({super.key});

  @override
  State<DiscoverView> createState() => _DiscoverViewState();
}

class _DiscoverViewState extends State<DiscoverView> {
  final AppinioSwiperController controller = AppinioSwiperController();
  bool onEndReached = false;

  final List<String> images = [
    "assets/images/sunflo.jpeg",
    "assets/images/23.jpg",
    "assets/images/17.jpg",
    "assets/images/22.jpg",
    "assets/images/19.jpg",
    "assets/images/21.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return onEndReached
        ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("You've reached the End!"),
              verticalSpace(),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          onEndReached = false;
                        });
                      },
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.all(10.0)),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      child: const Text(
                        "Restart",
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
          )
        : AppinioSwiper(
            swipeOptions: AppinioSwipeOptions.horizontal,
            unlimitedUnswipe: true,
            padding: EdgeInsets.zero,
            controller: controller,
            unswipe: _unswipe,
            onSwipe: _swipe,
            onEnd: _onEnd,
            cardsCount: images.length,
            cardsBuilder: (BuildContext context, int index) {
              return ProductSwipeCard(
                  controller: controller, image: images[index]);
            },
          );
  }

  void _swipe(int index, AppinioSwiperDirection direction) {
    log("the card was swiped to the: ${direction.name}");
  }

  void _unswipe(bool unswiped) {
    if (unswiped) {
      log("SUCCESS: card was unswiped");
    } else {
      log("FAIL: no card left to unswipe");
    }
  }

  void _onEnd() {
    setState(() {
      onEndReached = true;
    });
    log("end reached!");
  }
}
