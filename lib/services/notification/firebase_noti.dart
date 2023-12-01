import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseNoti {
  final _firebaseMessaging = FirebaseMessaging.instance;

  Future<void> initNotifications() async {
    await _firebaseMessaging.requestPermission();

    final fCMToken = await _firebaseMessaging.getToken();

    print(fCMToken);
  }
}