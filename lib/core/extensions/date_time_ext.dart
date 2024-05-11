import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;

import '../../main.dart';


extension DateTimeExtension on DateTime {
  String get timeAgo => timeago.format(this);

  String format (String format) => DateFormat(format).format(this);

  //blackHole
  String get formattedBlackHole{
   var output = DateFormat('dd/MM/yyyy').format(this);
   return output;
  }

  //blackHole
  String get formattedBlackHole2{
    var diff = difference(DateTime.now());
    return '${diff.inDays} ${App.s.days_left}';
  }
}