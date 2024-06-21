import 'package:intl/intl.dart';

class AppNumberFormatter {
  AppNumberFormatter._();

  static String formatNumber(num? number) {
    if (number == null) return '';
    return NumberFormat("#,##0", "en_US").format(number).replaceAll(",", " ");
  }
}
