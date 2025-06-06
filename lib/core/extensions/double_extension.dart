import 'package:easy_localization/easy_localization.dart';

extension CurrencyFormatting on double {
  String toCurrency({int decimalDigits = 2, String symbol = '\$'}) {
    final formatCurrency = NumberFormat.simpleCurrency(
      decimalDigits: decimalDigits,
      name: symbol,
    );
    return formatCurrency.format(this);
  }
}
