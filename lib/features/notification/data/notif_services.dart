import 'package:absensi_nanang/features/check_in/domain/absensi_model.dart';
import 'package:absensi_nanang/utils/dateformat_utils.dart';
import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:fluttertoast/fluttertoast.dart';

class NotifServices {
  Future<String?> getFcmToken() async {
    return await FirebaseMessaging.instance.getToken();
  }

  Future<void> sendNotif(
      {required String checkType, required int checkTime}) async {
    final thisDeviceToken = await getFcmToken();

    var title = '';
    var time = DateformatUtils.yMd_add_jm(checkTime);
    var body = '';
    if (checkType == AbsensiModel.TYPE_CHECKIN) {
      title = 'Check In Berhasil';
      body = 'Check In time: $time';
    } else {
      title = 'Check Out Berhasil';
      body = 'Check Out time: $time';
    }
    final data = {
      "notification": {"body": body, "title": title},
      "priority": "high",
      "to": thisDeviceToken,
      'token': thisDeviceToken
    };

    final headers = {
      'content-type': 'application/json',
      'Authorization':
          'key=AAAAS72FpV4:APA91bFxFUkbTXNoh9sKkcZ1LDmlBz_SI1GFzOZoOxgdHefFMA0KvyGLsjszvYBHmjaaAn4k-TO6MJlQ7Yds9W2wxv48L8WApHnG5LCn4y9j2J2pnwLw908D7dT_YK7Qn7in5McXzVfh'
    };

    BaseOptions options = new BaseOptions(
      headers: headers,
    );

    final postUrl = 'https://fcm.googleapis.com/fcm/send';

    try {
      final response = await Dio(options).post(postUrl, data: data);

      if (response.statusCode == 200) {
        print('notification sending success: ${response.data}');
      } else {
        print('notification sending failed');
        // on failure do sth
      }
    } catch (e) {
      print('exception $e');
    }
  }
}
