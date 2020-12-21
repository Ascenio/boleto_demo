import 'package:flutter/material.dart';

import '../../../data/model/boleto_model.dart';
import '../../../utils/month.dart';
import '../../../widgets/boleto/boleto_card.dart';
import '../../../widgets/boleto/no_boleto_found.dart';
import 'months_tab_bar.dart';

class BoletoHistory extends StatelessWidget {
  final TabController tabController;
  final List<Month> months;
  final Map<Month, List<BoletoModel>> boletosByMonth;

  const BoletoHistory({
    Key key,
    @required this.tabController,
    @required this.months,
    @required this.boletosByMonth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: MonthsTabBar(tabController: tabController, months: months),
        ),
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: months.map(
              (month) {
                final boletos = boletosByMonth[month];
                if (boletos?.isEmpty ?? true) {
                  return NoBoletoFound();
                }
                return ListView.builder(
                  itemCount: boletos.length,
                  itemBuilder: (_, index) => Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: BoletoCard(boleto: boletos[index]),
                  ),
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.only(left: 16, right: 16),
                );
              },
            ).toList(),
          ),
        ),
      ],
    );
  }
}
