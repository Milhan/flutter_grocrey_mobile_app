import 'package:flutter/material.dart';
import 'package:flutter_grocrey_mobile_app/const/const.dart';

class ContainerWhite extends StatelessWidget {
  const ContainerWhite({Key? key, required this.widget}) : super(key: key);

  final Widget widget;

  final double _heihtAndWhidth = 40;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: GroceyConst.borderRadiusCircular50,
        color: GroceyConst.colorWhite,
      ),
      height: _heihtAndWhidth,
      width: _heihtAndWhidth,
      child: widget,
    );
  }
}
