import 'package:flutter/material.dart';

import '../const/const.dart';

class TextContext extends StatelessWidget {
  const TextContext({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: Theme.of(context)
          .textTheme
          .subtitle1
          ?.copyWith(color: GroceyConst.colorGreyy),
    );
  }
}
