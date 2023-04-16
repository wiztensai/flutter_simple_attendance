import 'package:absensi_nanang/features/notification/presentation/components/my_local_notif.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class FcmController {
  FcmController() {
    onFcmForeground();
    onFcmTokenRefresh();
    afterAppTerminated();
  }

  onFcmTokenRefresh() {
    FirebaseMessaging.instance.onTokenRefresh.listen((fcmToken) async {
      print('FCM: Token refreshed: $fcmToken');
    }).onError((err) {
      print(err);
    });
  }

  onFcmForeground() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
      print('FCM: Got a message in foreground!');

      if (message.notification != null) {
        print('Notification data: ${message.notification}');
        MyLocalNotif.showLocalNotif(message);
      }
    });
  }

  afterAppTerminated() async {
    RemoteMessage? initialMessage =
        await FirebaseMessaging.instance.getInitialMessage();

    if (initialMessage != null) {
      _fcmHandleMessageOnTerminated(initialMessage, true);
    }

    FirebaseMessaging.onMessageOpenedApp.listen(
      (event) {
        _fcmHandleMessageOnTerminated(event, false);
      },
    );
  }

  Future<void> _fcmHandleMessageOnTerminated(
      RemoteMessage message, bool isOnMessageOpenedApp) async {
    print(
        'FCM: Got a message in terminated state | isOnMessageOpenedApp :$isOnMessageOpenedApp');
  }
}
