import 'package:flutter/material.dart';

import '../../data/model/boleto_model.dart';
import 'boleto_card_field.dart';

class BoletoCard extends StatelessWidget {
  final double spacingBetweenFields;
  final BoletoModel boleto;

  const BoletoCard({
    Key key,
    @required this.boleto,
    this.spacingBetweenFields = 8,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              //'AAABC.CCCCX DDDDD.DDDDDY EEEEE.EEEEEZ K UUUUVVVVVVVVVV',
              boleto.code,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: spacingBetweenFields),
            BoletoCardField(
              title: 'VENCIMENTO: ',
              description: boleto.expirationDate.toString(),
              //description: '10/02/2021',
            ),
            SizedBox(height: spacingBetweenFields),
            BoletoCardField(
              title: 'SITUAÇÃO: ',
              // description: 'ABERTO',
              description:
                  boleto.status == BoletoStatus.OPEN ? 'ABERTO' : 'QUITADO',
              descriptionStyle: TextStyle(
                fontWeight: FontWeight.bold,
                color: boleto.status == BoletoStatus.OPEN
                    ? theme.accentColor
                    : Colors.green,
              ),
            ),
            SizedBox(height: spacingBetweenFields),
            BoletoCardField(
              title: 'TOTAL: ',
              description: 'R\$ ${boleto.price.toStringAsFixed(2)}',
              //  description: 'R\$ 32,90',
              descriptionStyle: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            SizedBox(height: spacingBetweenFields),
            Text(
              'Obs.: Referente ao contrato #${boleto.crontact.id}',
              //'Obs.: Referente ao contrato #064634',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Divider(color: Colors.grey),
            Row(
              children: [
                Flexible(
                  child: ElevatedButton(
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0),
                      backgroundColor: MaterialStateProperty.all(
                        Theme.of(context).primaryColor,
                      ),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                    ),
                    child: Text('COPIAR CÓD BARRAS'),
                    onPressed: () {},
                  ),
                ),
                SizedBox(width: spacingBetweenFields),
                Flexible(
                  child: ElevatedButton(
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                    ),
                    child: Text('COPIAR CÓD BARRAS'),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
