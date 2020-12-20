import 'package:meta/meta.dart';
import 'package:intl/intl.dart';

import 'datetime_formatter.dart';

class BoletoExpirationDateFormatter implements DateTimeFormatter {
  final DateFormat dateFormat;

  const BoletoExpirationDateFormatter({@required this.dateFormat});

  @override
  String format(DateTime dateTime) {
    return dateFormat.format(dateTime);
  }
}
