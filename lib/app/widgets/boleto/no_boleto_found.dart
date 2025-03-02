import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../translations/translation_keys.dart';

class NoBoletoFound extends StatelessWidget {
  const NoBoletoFound({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        TranslationKeys.noBoletoFound.tr,
        style: TextStyle(
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
