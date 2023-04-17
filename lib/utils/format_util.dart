import 'package:intl/intl.dart';

class FormatUtil {
  static String toDDMMYY(String date) {
    try {
      DateTime dateTime = DateTime.parse(date);
      String formattedDate = DateFormat('dd-MM-yyyy').format(dateTime);
      return formattedDate;
    } catch (_) {
      return "00-00-0000";
    }
  }
}
