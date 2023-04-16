import 'package:intl/intl.dart';

class DateformatUtils {
  static String yMd_add_jm(int? time) {
    if (time == null) {
      return '';
    }
    var date = DateTime.fromMillisecondsSinceEpoch(time);
    var inputFormat = DateFormat.yMd().add_jm();
    var formatDate = inputFormat.format(date);
    return formatDate;
  }
}
