import 'package:flutter/material.dart';
import 'package:flutter_grocrey_mobile_app/const/const.dart';
import 'package:flutter_grocrey_mobile_app/view/grocrey_detail.dart';
import 'package:flutter_grocrey_mobile_app/widget/containerWith.dart';
import 'package:flutter_grocrey_mobile_app/widget/rowcarddesing.dart';
import 'package:flutter_grocrey_mobile_app/widget/textContext.dart';
import 'package:flutter_grocrey_mobile_app/widget/textbuttonseeal.dart';
import 'package:flutter_grocrey_mobile_app/widget/texttitle.dart';

class HomeGrocrey extends StatefulWidget {
  const HomeGrocrey({Key? key}) : super(key: key);

  @override
  State<HomeGrocrey> createState() => _HomeGrocreyState();
}

class _HomeGrocreyState extends State<HomeGrocrey> {
  final _top60 = 60.0;
  final _leftRight10 = 10.0;
  final _height30 = 30;
  final _height5 = 5;
  final _height150 = 150;
  final _width30 = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const GrocreyDetail()));
        },
        child: const Icon(
          Icons.shopping_basket_outlined,
          color: GroceyConst.colorWhite,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        //shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.home,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.plagiarism_outlined,
                  color: GroceyConst.colorGreyy,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.padding_outlined,
                  color: GroceyConst.colorGreyy,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.supervised_user_circle_outlined,
                  color: GroceyConst.colorGreyy,
                )),
          ],
        ),
      ),
      body: Padding(
        padding: GroceyConst.edgeInsetsAll5,
        child: Container(
          color: GroceyConst.colorGreyyBackGround,
          child: Padding(
            padding: EdgeInsets.only(
              top: _top60,
              left: _leftRight10,
              right: _leftRight10,
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _Appbar(context),
                  _sizedBoxHeight30(context),
                  _BannerCardDesing(context),
                  _sizedBoxHeight30(context),
                  _RowPopularItemsSeeAll(),
                  _sizedBoxHeight150(context),
                  _RowPopularItems(),
                  _RowNewItemsSeeAll(),
                  _RowNewItems(),
                  _RowNewItemsSeeAll(),
                  _RowNewItems(),
                  _sizedBoxHeight30(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  SingleChildScrollView _RowPopularItems() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RowCardDesing(
            image: GroceyConst.imageHomeOne,
            title: GroceyConst.homeCardTitle,
          ),
          GroceyConst.whidthSizedbox10,
          RowCardDesing(
            image: GroceyConst.imageHomeTwoo,
            title: GroceyConst.homeCardTitle,
          ),
          GroceyConst.whidthSizedbox10,
          RowCardDesing(
            image: GroceyConst.imageHomeOne,
            title: GroceyConst.homeCardTitle,
          ),
          GroceyConst.whidthSizedbox10,
          RowCardDesing(
            image: GroceyConst.imageHomeTwoo,
            title: GroceyConst.homeCardTitle,
          ),
        ],
      ),
    );
  }

  SingleChildScrollView _RowNewItems() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RowCardDesing(
            image: GroceyConst.imageHomeOne,
            title: GroceyConst.homeCardTitle,
          ),
          GroceyConst.whidthSizedbox10,
          RowCardDesing(
            image: GroceyConst.imageHomeTwoo,
            title: GroceyConst.homeCardTitle,
          ),
          GroceyConst.whidthSizedbox10,
          RowCardDesing(
            image: GroceyConst.imageHomeOne,
            title: GroceyConst.homeCardTitle,
          ),
          GroceyConst.whidthSizedbox10,
          RowCardDesing(
            image: GroceyConst.imageHomeTwoo,
            title: GroceyConst.homeCardTitle,
          ),
        ],
      ),
    );
  }

  Row _RowPopularItemsSeeAll() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const TextTitle(text: GroceyConst.homePopularItemsText),
        TextButtonSeeall(text: GroceyConst.homeSeeallText, onPressed: () {})
      ],
    );
  }

  Row _RowNewItemsSeeAll() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const TextTitle(text: GroceyConst.homeNewItemsText),
        TextButtonSeeall(text: GroceyConst.homeSeeallText, onPressed: () {})
      ],
    );
  }

  Container _BannerCardDesing(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / _height5,
      decoration: BoxDecoration(
        borderRadius: GroceyConst.borderRadiusCircular12,
        color: GroceyConst.colorGreen200,
      ),
      child: _RowBanner(context),
    );
  }

  Row _RowBanner(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 6,
          child: Center(
            child: Padding(
              padding: GroceyConst.edgeInsetsAll10,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextTitle(text: GroceyConst.homeBannerTittleText),
                  _BannerElevatedButton(context)
                ],
              ),
            ),
          ),
        ),
        Expanded(
            flex: 4,
            child: Image.asset(
              GroceyConst.imageInfo,
              fit: BoxFit.cover,
            ))
      ],
    );
  }

  ElevatedButton _BannerElevatedButton(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            primary: GroceyConst.colorWhite,
            shape: RoundedRectangleBorder(
                borderRadius: GroceyConst.borderRadiusCircular50)),
        child: Text(
          GroceyConst.homeBannerelevatedButtonText,
          style: Theme.of(context)
              .textTheme
              .subtitle1
              ?.copyWith(color: GroceyConst.colorGreen),
        ));
  }

  SizedBox _sizedBoxHeight30(BuildContext context) {
    return SizedBox(height: MediaQuery.of(context).size.height / _height30);
  }

  SizedBox _sizedBoxHeight150(BuildContext context) {
    return SizedBox(height: MediaQuery.of(context).size.height / _height150);
  }

  Row _Appbar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _RowAppbarMenuLocation(context),
        ContainerWhite(
            widget:
                IconButton(onPressed: () {}, icon: const Icon(Icons.search)))
      ],
    );
  }

  Row _RowAppbarMenuLocation(BuildContext context) {
    return Row(children: [
      ContainerWhite(
        widget: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
      ),
      SizedBox(
        width: MediaQuery.of(context).size.width / _width30,
      ),
      const TextContext(text: GroceyConst.homeLocationText),
    ]);
  }
}
