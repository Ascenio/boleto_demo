import 'dart:math';

import '../../data/provider/faker/boleto_faker.dart';
import '../../data/provider/faker/contract_faker.dart';
import '../../utils/dateformat/boleto_expiration_date_dateformat.dart';
import '../../utils/datetime_formatter/boleto_expiration_date_formatter.dart';
import '../../utils/datetime_formatter/datetime_formatter.dart';
import 'package:get/get.dart';
import '../../data/provider/fake_boleto_provider.dart';
import '../../data/repository/fake_boleto_repository.dart';
import 'boleto_controller.dart';

class BoletoBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BoletoController>(
      () => BoletoController(
        boletoRepository: FakeBoletoRepository(
          boletoProvider: FakeBoletoProvider(
            boletoFaker: BoletoFaker(
              random: Random(),
              contractFaker: ContractFaker(
                random: Random(),
              ),
            ),
          ),
        ),
      ),
    );
    Get.lazyPut<DateTimeFormatter>(() => BoletoExpirationDateFormatter(
        dateFormat: boletoExpirationDateDateFormat));
  }
}
