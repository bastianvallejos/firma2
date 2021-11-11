import 'package:flutter/material.dart';

class NotificationService {
  static GlobalKey<ScaffoldMessengerState> messegerKey =
      new GlobalKey<ScaffoldMessengerState>();

  static showSnackBar(String message) {
    final snackBar = new SnackBar(
      content:
          Text(message, style: TextStyle(color: Colors.black, fontSize: 20)),
    );
    messegerKey.currentState!.showSnackBar(snackBar);
  }
}
