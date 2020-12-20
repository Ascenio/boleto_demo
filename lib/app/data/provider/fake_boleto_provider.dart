import 'package:boleto_demo/app/data/provider/boleto_provider.dart';
import 'package:meta/meta.dart';

import '../model/boleto_model.dart';
import 'faker/faker.dart';

class FakeBoletoProvider implements BoletoProvider {
  final Faker<BoletoModel> boletoFaker;

  const FakeBoletoProvider({@required this.boletoFaker});

  @override
  Future<List<BoletoModel>> getAll() async {
    await Future.delayed(Duration(seconds: 2));
    return List.generate(10, (_) => boletoFaker.createFake());
  }
}
