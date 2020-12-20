import 'package:flutter/material.dart';

class BoletoCardField extends StatelessWidget {
  final String title;
  final String description;
  final TextStyle descriptionStyle;

  const BoletoCardField({
    Key key,
    @required this.title,
    @required this.description,
    this.descriptionStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: title,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        children: [
          TextSpan(
            text: description,
            style: descriptionStyle ?? TextStyle(fontWeight: FontWeight.normal),
          ),
        ],
      ),
    );
  }
}
