import 'package:timeago/timeago.dart' as timeago;

class _Utils {
  String parseAndConvertDate(String date) =>
      timeago.format(DateTime.parse(date), locale: 'en_short');
}

_Utils utils = _Utils();
