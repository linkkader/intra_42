import 'package:intl/intl.dart';


extension DateTimeExtension on DateTime {

  String format (String format) => DateFormat(format).format(this);

  //blackHole
  String get formattedBlackHole{
   var output = DateFormat('dd/MM/yyyy').format(this);
   return output;
  }

  //blackHole
  String get formattedBlackHole2{
    var diff = difference(DateTime.now());
    return '${diff.inDays} left';
  }
}