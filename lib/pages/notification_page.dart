import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final message = ModalRoute.of(context)?.settings.arguments as RemoteMessage;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notification"),
      ),
      body: message.notification != null
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(message.notification!.title.toString()),
                  Text(message.notification!.body.toString())
                ],
              ),
            )
          : const SizedBox.shrink(),
    );
  }
}
