import 'package:flutter/material.dart';

import '../../../data/model/boleto_model.dart';
import '../../../global_widgets/boleto/boleto_card.dart';

class BoletoHistory extends StatelessWidget {
  final TabController tabController;
  final List<String> months;
  final Map<String, List<BoletoModel>> boletosByMonth;

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
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: TabBar(
            indicatorColor: Theme.of(context).primaryColor,
            indicatorSize: TabBarIndicatorSize.label,
            isScrollable: true,
            controller: tabController,
            physics: BouncingScrollPhysics(),
            tabs: months
                .map(
                  (month) => Padding(
                    padding: const EdgeInsets.all(4),
                    child: Text(
                      month,
                      style: Theme.of(context).textTheme.headline6.copyWith(
                            fontWeight: FontWeight.normal,
                            color: Colors.black54,
                          ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: months.map(
              (month) {
                final boletos = boletosByMonth[month];
                return ListView.builder(
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                  itemCount: boletos.length,
                  itemBuilder: (_, index) => BoletoCard(boleto: boletos[index]),
                );
              },
            ).toList(),
          ),
        ),
      ],
    );
  }
}
