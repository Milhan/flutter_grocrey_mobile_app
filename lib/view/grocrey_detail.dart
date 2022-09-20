import 'package:flutter/material.dart';
import 'package:flutter_grocrey_mobile_app/widget/containerWith.dart';
import 'package:flutter_grocrey_mobile_app/widget/elevatedButton.dart';
import 'package:flutter_grocrey_mobile_app/widget/textContext.dart';
import 'package:flutter_grocrey_mobile_app/widget/texttitle.dart';

import '../const/const.dart';

class GrocreyDetail extends StatelessWidget {
  const GrocreyDetail({Key? key}) : super(key: key);
  final _top60 = 60.0;
  final _leftRight10 = 10.0;

  final double _circularAvatarHeightWidth = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: GroceyConst.edgeInsetsAll5,
            child: Container(
              color: GroceyConst.colorGreyyBackGround,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: EdgeInsets.only(
                    top: _top60, left: _leftRight10, right: _leftRight10),
                child: Column(
                  children: [
                    Expanded(
                      flex: 4,
                      child: _columButtonAndImage(),
                    ),
                    Expanded(
                        flex: 5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _detailTextTitle(context),
                            GroceyConst.heightSizedbox10,
                            _rowPriceAndCircularAvatarButton(context),
                            GroceyConst.heightSizedbox25,
                            const TextTitle(
                                text: GroceyConst.detailContextTitle),
                            GroceyConst.heightSizedbox10,
                            _descriptionText(context),
                            GroceyConst.heightSizedbox25,
                            const TextTitle(text: GroceyConst.detailRealdTitle),
                            GroceyConst.heightSizedbox10,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                _columnCardImageAndText(),
                                _columnCardImageAndText(),
                                _columnCardImageAndText(),
                                _columnCardImageAndText(),
                                _columnCardImageAndText(),
                              ],
                            ),
                            GroceyConst.heightSizedbox10,
                            ElevatedButtonClean(
                                text: GroceyConst.detailElevatedButtonTitle,
                                onPressed: () {})
                          ],
                        ))
                  ],
                ),
              ),
            )));
  }

  Column _columnCardImageAndText() {
    return Column(
      children: [
        Card(
          elevation: 1,
          shape: RoundedRectangleBorder(
              borderRadius: GroceyConst.borderRadiusCircular12),
          child: Image.asset(
            GroceyConst.imageHomeTwoo,
            height: 50,
            width: 50,
          ),
        ),
        Text(GroceyConst.detailTomato),
      ],
    );
  }

  Text _descriptionText(BuildContext context) {
    return Text(
      GroceyConst.detailContext,
      style: Theme.of(context)
          .textTheme
          .subtitle2
          ?.copyWith(color: GroceyConst.colorGreyy),
    );
  }

  Row _rowPriceAndCircularAvatarButton(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [_textPriceText(context), _textPriceEx(context)],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _circularAvatarRemoveButton(),
            GroceyConst.whidthSizedbox10,
            const TextTitle(text: GroceyConst.homeCardKg),
            GroceyConst.whidthSizedbox10,
            _circularAvatarAddButon(),
          ],
        ),
      ],
    );
  }

  SizedBox _circularAvatarRemoveButton() {
    return SizedBox(
      height: _circularAvatarHeightWidth,
      width: _circularAvatarHeightWidth,
      child: const CircleAvatar(
        child: Center(
          child: IconButton(
              onPressed: null,
              icon: Icon(
                Icons.remove,
                size: 15,
              )),
        ),
      ),
    );
  }

  SizedBox _circularAvatarAddButon() {
    return SizedBox(
      height: _circularAvatarHeightWidth,
      width: _circularAvatarHeightWidth,
      child: CircleAvatar(
        child: Center(
          child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                size: 15,
              )),
        ),
      ),
    );
  }

  Text _textPriceText(BuildContext context) {
    return Text(
      GroceyConst.homeCardPrice,
      style: Theme.of(context).textTheme.headline6?.copyWith(
            color: GroceyConst.colorBlack,
            fontWeight: FontWeight.bold,
          ),
    );
  }

  Text _textPriceEx(BuildContext context) {
    return Text(
      GroceyConst.homeCardPriceEx,
      style: Theme.of(context).textTheme.subtitle2?.copyWith(
          color: GroceyConst.colorGreyy,
          fontSize: 10,
          decoration: TextDecoration.lineThrough),
    );
  }

  Text _detailTextTitle(BuildContext context) {
    return Text(
      GroceyConst.detailTitle,
      style: Theme.of(context)
          .textTheme
          .headline4
          ?.copyWith(color: GroceyConst.colorBlack),
    );
  }

  Column _columButtonAndImage() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            ContainerWhite(widget: Icon(Icons.chevron_left_sharp)),
            ContainerWhite(widget: Icon(Icons.search)),
          ],
        ),
        _imageAssets(),
      ],
    );
  }

  Image _imageAssets() {
    return Image.asset(
      GroceyConst.imageHomeOne,
      fit: BoxFit.cover,
    );
  }
}
