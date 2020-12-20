import 'package:get/get.dart';

import '../modules/boleto/boleto_binding.dart';
import '../modules/boleto/boleto_page.dart';
import '../utils/month.dart';
import 'routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.BOLETO,
      page: () => BoletoPage(
        months: Months.values,
      ),
      binding: BoletoBinding(),
    )
  ];
}
