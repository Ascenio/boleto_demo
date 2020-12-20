import 'package:meta/meta.dart';

import 'contract_model.dart';

enum BoletoStatus { OPEN, PAID }

class BoletoModel {
  final String code;
  final double price;
  final BoletoStatus status;
  final DateTime expirationDate;
  final ContractModel crontact;

  const BoletoModel({
    @required this.code,
    @required this.price,
    @required this.status,
    @required this.expirationDate,
    @required this.crontact,
  });
}
