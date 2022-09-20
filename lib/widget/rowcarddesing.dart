import 'package:flutter/material.dart';
import 'package:flutter_grocrey_mobile_app/const/const.dart';

class RowCardDesing extends StatefulWidget {
  RowCardDesing({Key? key, required this.image, required this.title})
      : super(key: key);

  final String image;
  final String title;

  @override
  State<RowCardDesing> createState() => _RowCardDesingState();
}

class _RowCardDesingState extends State<RowCardDesing> {
  final double _containerHeight5 = 5;

  final double _containerWidth22 = 2.2;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        height: MediaQuery.of(context).size.height / _containerHeight5,
        width: MediaQuery.of(context).size.width / _containerWidth22,
        decoration: BoxDecoration(
          color: GroceyConst.colorWhite,
          borderRadius: GroceyConst.borderRadiusCircular12,
        ),
        child: Padding(
          padding: GroceyConst.edgeInsetsAll10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 5,
                child: Center(
                  child: Image.asset(
                    widget.image,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              GroceyConst.heightSizedbox10,
              Expanded(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ContainerSmallText(text: widget.title),
                    _containerKgTitleText(context),
                    GroceyConst.heightSizedbox10,
                    _RowContainetPriceButton(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row _RowContainetPriceButton(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          children: [
            const ContainerSmallText(text: GroceyConst.homeCardPrice),
            _containerPriceExtTitleText(context),
          ],
        ),
        _GestureDetectorAddIconButton(context),
      ],
    );
  }

  GestureDetector _GestureDetectorAddIconButton(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: MediaQuery.of(context).size.height / 37,
        decoration: BoxDecoration(
            borderRadius: GroceyConst.borderRadiusCircular50 * 2,
            color: GroceyConst.colorGreen),
        child: const Icon(
          Icons.add,
          size: 22,
          color: GroceyConst.colorWhite,
        ),
      ),
    );
  }

  Text _containerPriceExtTitleText(BuildContext context) {
    return Text(
      GroceyConst.homeCardPriceEx,
      style: Theme.of(context).textTheme.subtitle2?.copyWith(
          fontSize: 10,
          color: GroceyConst.colorGreyy,
          decoration: TextDecoration.lineThrough),
    );
  }

  Text _containerKgTitleText(BuildContext context) {
    return Text(
      GroceyConst.homeCardKg,
      style: Theme.of(context)
          .textTheme
          .subtitle2
          ?.copyWith(color: GroceyConst.colorGreyy, fontSize: 12),
    );
  }
}

class ContainerSmallText extends StatelessWidget {
  const ContainerSmallText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .subtitle1
          ?.copyWith(fontWeight: FontWeight.w500),
    );
  }
}
