import 'dart:math';
import 'package:meta/meta.dart';

import '../../model/contract_model.dart';
import 'faker.dart';

class ContractFaker implements Faker<ContractModel> {
  final Random random;

  const ContractFaker({@required this.random});

  @override
  ContractModel createFake() {
    final id = random.nextInt(99999).toString().padLeft(6, '0');
    return ContractModel(id: id);
  }
}
