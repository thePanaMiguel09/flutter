import 'package:intl/intl.dart';

class FormatNumber {
  static String humanReadble(double number) {
    final formatterNumber = NumberFormat.compactCurrency(
      decimalDigits: 0,
      symbol: '',
    ).format(number);

    return formatterNumber;
  }
}
