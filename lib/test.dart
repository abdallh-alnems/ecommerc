import 'package:firebase_messaging/firebase_messaging.dart';

class Firebasess {
  final fire = FirebaseMessaging.instance;

  Future<void> inittt() async {
    await fire.requestPermission();

    final token = await fire.getToken();

    print(
        "======================================================================");
    print("token $token");
    print(
        "======================================================================");
  }
}
