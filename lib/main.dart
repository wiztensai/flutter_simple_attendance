import 'package:absensi_nanang/app_widget.dart';
import 'package:absensi_nanang/features/notification/presentation/components/my_local_notif.dart';
import 'package:absensi_nanang/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  if (!kIsWeb) {
    await MyLocalNotif.setupFlutterNotifications();
  }

  runApp(const AppWidget());
}

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  print(
      'FCM: Got a message in background state ${message.notification?.title ?? 'empty'}');
}
