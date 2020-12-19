import 'package:boleto_demo/app/modules/boleto/boleto_binding.dart';
import 'package:get/get.dart';

import '../modules/boleto/boleto_page.dart';
import 'routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.BOLETO,
      page: () => BoletoPage(),
      binding: BoletoBinding(),
    )
  ];
}
