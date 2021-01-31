import 'package:timeago/timeago.dart' as timeago;

class Utils {
  String parseAndConvertDate(String date) =>
      timeago.format(DateTime.parse(date), locale: 'en_short');
}
