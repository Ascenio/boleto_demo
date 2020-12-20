import 'package:get/get.dart';
import 'package:meta/meta.dart';

class Month {
  final int id;
  final String prefix;

  const Month._({
    @required this.id,
    @required this.prefix,
  });

  static Month fromDateTime(DateTime dateTime) {
    return Months.values[dateTime.month - 1];
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Month && o.id == id;
  }

  @override
  int get hashCode => id.hashCode;
}

abstract class Months {
  static final january = Month._(id: DateTime.january, prefix: 'january'.tr);
  static final february = Month._(id: DateTime.february, prefix: 'february'.tr);
  static final march = Month._(id: DateTime.march, prefix: 'march'.tr);
  static final april = Month._(id: DateTime.april, prefix: 'april'.tr);
  static final may = Month._(id: DateTime.may, prefix: 'may'.tr);
  static final june = Month._(id: DateTime.june, prefix: 'june'.tr);
  static final july = Month._(id: DateTime.july, prefix: 'july'.tr);
  static final august = Month._(id: DateTime.august, prefix: 'august'.tr);
  static final september =
      Month._(id: DateTime.september, prefix: 'september'.tr);
  static final october = Month._(id: DateTime.october, prefix: 'october'.tr);
  static final november = Month._(id: DateTime.november, prefix: 'november'.tr);
  static final december = Month._(id: DateTime.december, prefix: 'december'.tr);

  static List<Month> get values => [
        january,
        february,
        march,
        april,
        may,
        june,
        july,
        august,
        september,
        october,
        november,
        december,
      ];
}
