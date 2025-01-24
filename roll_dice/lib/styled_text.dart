import 'package:flutter/material.dart';

class StyledText extends StatelessWidget{
  final String text;
  final TextStyle style;

  const StyledText(this.text, this.style, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: style);
  }
}