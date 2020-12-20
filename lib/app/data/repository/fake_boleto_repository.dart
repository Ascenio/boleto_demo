import 'package:meta/meta.dart';

import '../model/boleto_model.dart';
import '../provider/boleto_provider.dart';
import 'boleto_repository.dart';

class FakeBoletoRepository implements BoletoRepository {
  final BoletoProvider boletoProvider;

  const FakeBoletoRepository({@required this.boletoProvider});

  @override
  Future<List<BoletoModel>> getAll() {
    return boletoProvider.getAll();
  }
}
