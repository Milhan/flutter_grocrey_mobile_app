import 'package:flutter/material.dart';

class TextButtonSeeall extends StatelessWidget {
  const TextButtonSeeall(
      {Key? key, required this.text, required this.onPressed})
      : super(key: key);
  final void Function() onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: onPressed, child: Text(text));
  }
}
