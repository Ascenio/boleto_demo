import 'package:get/get.dart';
import 'package:meta/meta.dart';

import '../../utils/month.dart';
import '../../data/model/boleto_model.dart';
import '../../data/repository/boleto_repository.dart';

class BoletoController extends GetxController {
  final BoletoRepository boletoRepository;

  BoletoController({
    @required this.boletoRepository,
  });

  @override
  void onInit() {
    super.onInit();
    loadBoletos();
  }

  final _boletos = <BoletoModel>[].obs;

  Map<Month, List<BoletoModel>> get boletosByMonth {
    return _boletos.fold(<Month, List<BoletoModel>>{}, (boletos, boleto) {
      final month = Month.fromDateTime(boleto.expirationDate);
      boletos[month] ??= [];
      boletos[month].add(boleto);
      return boletos;
    });
  }

  Future<void> loadBoletos() async {
    final boletos = await boletoRepository.getAll();
    _boletos.addAll(boletos);
  }
}
