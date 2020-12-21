import 'package:flutter/material.dart';

class BoletoCardButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;

  const BoletoCardButton({
    Key key,
    @required this.text,
    @required this.onPressed,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ElevatedButton(
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0),
        backgroundColor: MaterialStateProperty.all(
          color ?? theme.primaryColor,
        ),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
      ),
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Text(text),
      ),
      onPressed: onPressed,
    );
  }
}
