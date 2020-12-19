import 'package:get/get.dart';

import 'boleto_controller.dart';

class BoletoBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BoletoController>(
      () => BoletoController(),
    );
  }
}
