import 'package:flutter/material.dart';
import 'package:flutter_grocrey_mobile_app/const/const.dart';
import 'package:flutter_grocrey_mobile_app/view/grocrey_home.dart';
import 'package:flutter_grocrey_mobile_app/widget/elevatedButton.dart';
import 'package:flutter_grocrey_mobile_app/widget/textContext.dart';

class InfoGrocrey extends StatelessWidget {
  const InfoGrocrey({Key? key}) : super(key: key);

  final double _leftRightTop = 20;
  final double _bootom = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: GroceyConst.edgeInsetsAll5,
        child: Container(
          color: GroceyConst.colorGreen200,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(
                  left: _leftRightTop,
                  right: _leftRightTop,
                  top: _leftRightTop,
                  bottom: _bootom),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(flex: 2),
                  Expanded(
                    flex: 3,
                    child: _imageAssets(),
                  ),
                  const Spacer(flex: 1),
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _textTitle(context),
                        TextContext(text: GroceyConst.infoContext)
                      ],
                    ),
                  ),
                  const Spacer(flex: 1),
                  Expanded(flex: 1, child: _elevatedButton(context)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Image _imageAssets() {
    return Image.asset(
      GroceyConst.imageInfo,
      fit: BoxFit.contain,
    );
  }

  Text _textTitle(BuildContext context) {
    return Text(
      GroceyConst.infoTitle,
      textAlign: TextAlign.center,
      style: Theme.of(context)
          .textTheme
          .headline4
          ?.copyWith(color: GroceyConst.colorBlack),
    );
  }

  ElevatedButtonClean _elevatedButton(BuildContext context) {
    return ElevatedButtonClean(
        text: GroceyConst.infoElevatedText,
        onPressed: () {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => const HomeGrocrey()));
        });
  }
}
