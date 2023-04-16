import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class MyLocalNotif {
  static late AndroidNotificationChannel channel;

  static bool isFlutterLocalNotificationsInitialized = false;

  static late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;
  static const ICON_NAME = 'icon_notif';
  static Future<void> setupFlutterNotifications() async {
    if (isFlutterLocalNotificationsInitialized) {
      return;
    }
    channel = const AndroidNotificationChannel(
      'absensi_nanang_id', // channel id
      'Absensi Notifications', // title
      description:
          'This channel is used for Absensi notifications.', // description
      importance: Importance.max,
    );

    flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

    // file launcher_icon.png ada di android/app/main/res/drawable
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings(ICON_NAME);

    const InitializationSettings initializationSettings =
        InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: null,
      macOS: null,
      linux: null,
    );

    await flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse:
          (NotificationResponse notificationResponse) async {
        // callback is fired when the user selects a notification
        switch (notificationResponse.notificationResponseType) {
          case NotificationResponseType.selectedNotification:
            break;
          case NotificationResponseType.selectedNotificationAction:
            break;
        }
      },
      onDidReceiveBackgroundNotificationResponse:
          _onDidReceiveBackgroundNotificationResponse,
    );

    /// Create an Android Notification Channel.
    ///
    /// We use this channel in the `AndroidManifest.xml` file to override the
    /// default FCM channel to enable heads up notifications.
    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);

    /// Update the iOS foreground notification presentation options to allow
    /// heads up notifications.
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
    isFlutterLocalNotificationsInitialized = true;
  }

  static void showLocalNotif(RemoteMessage message) {
    if (!kIsWeb) {
      flutterLocalNotificationsPlugin.show(
        1,
        message.notification?.title ?? 'Title',
        message.notification?.body ?? 'Body',
        NotificationDetails(
          android: AndroidNotificationDetails(
            channel.id,
            channel.name,
            channelDescription: channel.description,
            icon: ICON_NAME,
            priority: Priority.high,
          ),
        ),
      );
    }
  }

  static void _onDidReceiveBackgroundNotificationResponse(
      NotificationResponse details) {
    // callback is invoked on a background isolate.
    print(
        'Local Notif: _onDidReceiveBackgroundNotificationResponse ${details.payload}');
  }
}
