import '../model/boleto_model.dart';

abstract class BoletoProvider {
  Future<List<BoletoModel>> getAll();
}
