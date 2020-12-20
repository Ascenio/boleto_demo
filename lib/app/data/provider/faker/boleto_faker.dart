import 'dart:math';

import 'package:meta/meta.dart';

import '../../model/boleto_model.dart';
import '../../model/contract_model.dart';
import 'faker.dart';

class BoletoFaker implements Faker<BoletoModel> {
  final Random random;
  final Faker<ContractModel> contractFaker;

  const BoletoFaker({
    @required this.contractFaker,
    @required this.random,
  });

  String _createCode() {
    // 44 digits
    // AAABC.CCCCX DDDDD.DDDDDY EEEEE.EEEEEZ K UUUUVVVVVVVVVV
    final fields = [
      '${random.nextInt(99999).toString().padLeft(5, '0')}.${random.nextInt(99999).toString().padLeft(5, '0')}',
      '${random.nextInt(99999).toString().padLeft(5, '0')}.${random.nextInt(99999).toString().padLeft(5, '0')}',
      '${random.nextInt(99999).toString().padLeft(5, '0')}.${random.nextInt(99999).toString().padLeft(5, '0')}',
      '${random.nextInt(9)}'
              '${random.nextInt(9999999)}.${random.nextInt(9999999)}'
          .padLeft(14, '0'),
    ];
    return fields.join(' ');
  }

  DateTime _createExpirationDate() {
    final month = random.nextInt(12) + 1;
    final day = random.nextInt(28) + 1;
    return DateTime(2020, month, day);
  }

  @override
  BoletoModel createFake() {
    final code = _createCode();
    final price = 20 + random.nextDouble() * 300;
    final status = random.nextBool() ? BoletoStatus.OPEN : BoletoStatus.PAID;
    final expirationDate = _createExpirationDate();
    final crontact = contractFaker.createFake();
    return BoletoModel(
      code: code,
      price: price,
      status: status,
      expirationDate: expirationDate,
      crontact: crontact,
    );
  }
}
