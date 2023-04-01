import 'package:flutter/material.dart';
import 'package:shopbuzzer/helpers/constants.dart';
import 'package:shopbuzzer/views/notifications/notification_view.dart';

class NotificationItem extends StatelessWidget {
  final String name;
  final String title;
  final int time;
  const NotificationItem({
    super.key,
    required this.name,
    required this.title,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(routeTransition(const NotificationView()));
        },
        child: Container(
          // height: 80,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: kWhiteColor,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CircleAvatar(
                backgroundColor: kBlackColor,
                maxRadius: 20,
                child: Center(
                  child: Icon(
                    Icons.notifications_active,
                    size: kIconSize,
                    color: kWhiteColor,
                  ),
                ),
              ),
              horizontalSpace(),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: kMediumTextSize,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: kMediumTextSize,
                        color: kBlackFaded,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              horizontalSpace(),
              Text(
                "$time min",
                style: const TextStyle(
                  fontSize: kMediumTextSize,
                  color: kBlackFaded,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
