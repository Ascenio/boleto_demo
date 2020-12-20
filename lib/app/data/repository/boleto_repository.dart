import '../model/boleto_model.dart';

abstract class BoletoRepository {
  Future<List<BoletoModel>> getAll();
}
