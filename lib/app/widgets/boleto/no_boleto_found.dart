import 'package:flutter/material.dart';

class NoBoletoFound extends StatelessWidget {
  const NoBoletoFound({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Nenhum boleto a ser pago ;)',
        style: TextStyle(
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
