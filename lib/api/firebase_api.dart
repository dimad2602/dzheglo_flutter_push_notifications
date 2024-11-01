import 'package:dzheglo_flutter_push_notifications/main.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseApi {
  final _firebaseMesaging = FirebaseMessaging.instance;

  Future<void> initNotifications() async {
    //permission from user
    await _firebaseMesaging.requestPermission();
    //fetch FCM token
    final fCMtoken = await _firebaseMesaging.getToken();

    print(fCMtoken.toString());

    initPushNotifications();
  }

  void handleMessage(RemoteMessage? message) {
    if (message == null) return;
    print("au");
    navigatorKey.currentState?.pushNamed(
      '/NotificationPage',
      arguments: message,
    );
  }

  Future initPushNotifications() async {
    FirebaseMessaging.instance.getInitialMessage().then(handleMessage);

    FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
  }
}
