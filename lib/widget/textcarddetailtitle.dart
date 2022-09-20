import 'package:flutter/material.dart';

class TextCardDetailTitle extends StatelessWidget {
  const TextCardDetailTitle({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.subtitle2,
    );
  }
}
