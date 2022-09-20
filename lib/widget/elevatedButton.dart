// ignore: file_names
import 'package:flutter/material.dart';

import '../const/const.dart';

class ElevatedButtonClean extends StatelessWidget {
  const ElevatedButtonClean(
      {Key? key, required this.text, required this.onPressed})
      : super(key: key);

  final String text;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
            borderRadius: GroceyConst.borderRadiusCircular50),
      ),
      onPressed: onPressed,
      child: Center(
        child: Text(text),
      ),
    );
  }
}
