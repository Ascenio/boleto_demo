import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/model/boleto_model.dart';
import '../../theme/color_theme.dart';
import '../../translations/translation_keys.dart';
import '../../utils/datetime_formatter/datetime_formatter.dart';
import 'boleto_card_button.dart';
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
    // FIXME injetar a dependência
    final formatter = Get.find<DateTimeFormatter>();
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              boleto.code,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: spacingBetweenFields),
            BoletoCardField(
              title: TranslationKeys.expirationDate.tr,
              description: formatter.format(boleto.expirationDate),
            ),
            SizedBox(height: spacingBetweenFields),
            BoletoCardField(
              title: TranslationKeys.status.tr,
              description: boleto.status == BoletoStatus.OPEN
                  ? TranslationKeys.boletoStatusOpen.tr
                  : TranslationKeys.boletoStatusPaid.tr,
              descriptionStyle: TextStyle(
                fontWeight: FontWeight.bold,
                color: boleto.status == BoletoStatus.OPEN
                    ? secondaryColor
                    : Colors.green,
              ),
            ),
            SizedBox(height: spacingBetweenFields),
            BoletoCardField(
              title: TranslationKeys.boletoPrice.tr,
              description: 'R\$ ${boleto.price.toStringAsFixed(2)}',
              descriptionStyle: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            SizedBox(height: spacingBetweenFields),
            Text(
              '${TranslationKeys.boletoObservation.tr} #${boleto.crontact.id}',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Divider(color: Colors.grey),
            const SizedBox(height: 4),
            Row(
              children: [
                boleto.status == BoletoStatus.PAID
                    ? Spacer()
                    : Flexible(
                        child: BoletoCardButton(
                          text: TranslationKeys.copyBoletoCodeButton.tr,
                          onPressed: () {},
                        ),
                      ),
                SizedBox(width: spacingBetweenFields),
                Flexible(
                  child: BoletoCardButton(
                    color: theme.accentColor,
                    text: TranslationKeys.downloadBoletoButton.tr,
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
