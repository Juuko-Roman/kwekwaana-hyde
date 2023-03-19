import 'package:flutter/material.dart';

class Notifications {
  String notificationContent;
  String date;
  String time;
  String notifier;
  String imageURL;
  Notifications(
      {required this.notificationContent,
      required this.date,
      required this.time,
      required this.imageURL,
      required this.notifier});
}
