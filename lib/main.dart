import 'package:dzheglo_flutter_push_notifications/api/firebase_api.dart';
import 'package:dzheglo_flutter_push_notifications/firebase_options.dart';
import 'package:dzheglo_flutter_push_notifications/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

final navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await FirebaseApi().initNotifications();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      navigatorKey: navigatorKey,
      routes: routes,
    );
  }
}
