import 'package:get/get.dart';

import '../modules/boleto/boleto_binding.dart';
import '../modules/boleto/boleto_page.dart';
import '../utils/months.dart';
import 'routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.BOLETO,
      page: () => BoletoPage(
        months: months,
      ),
      binding: BoletoBinding(),
    )
  ];
}
