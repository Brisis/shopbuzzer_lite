import 'package:flutter/material.dart';
import 'package:shopbuzzer/views/notifications/widgets/notification_item.dart';

class NotificationsView extends StatelessWidget {
  const NotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const NotificationItem(
          name: "New Recommended Product",
          title:
              "Edgars just posted a new product similar to what you usually buy",
          time: 23,
        );
      },
    );
  }
}
