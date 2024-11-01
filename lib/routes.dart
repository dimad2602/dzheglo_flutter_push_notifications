import 'package:dzheglo_flutter_push_notifications/pages/home_page.dart';
import 'package:dzheglo_flutter_push_notifications/pages/notification_page.dart';
import 'package:flutter/material.dart';

final Map<String, Widget Function(BuildContext context)> routes = {
  '/': (BuildContext context) => const HomePage(),
  '/NotificationPage': (BuildContext context) => const NotificationPage(),
};
