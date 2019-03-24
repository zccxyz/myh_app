import 'package:flutter/material.dart';
import 'package:myh_shop/app/main/goods/add_coupon.dart';
import 'package:myh_shop/common.dart';
import 'package:myh_shop/widget/MyAppBar.dart';
import 'package:flutter/cupertino.dart' show CupertinoButton;

class Coupon extends StatefulWidget {
  final int id;

  Coupon({Key key, this.id}) : super(key: key);

  @override
  _CouponState createState() => _CouponState();
}

class _CouponState extends State<Coupon> {
  List list = [1, 1, 1, 1];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg2,
      appBar: MyAppBar(
        title: Text('优惠券'),
        actions: <Widget>[
          CupertinoButton(
              child: Text('创建'),
              onPressed: () {
                jump2(context, AddCoupon());
              })
        ],
      ),
      body: ListView.builder(
        itemBuilder: (_, i) => _item(i),
        itemCount: list.length,
      ),
    );
  }

  Widget _item(int i) => Container(
        child: Card(
          elevation: 4,
          child: Column(
            children: <Widget>[
              Image.asset(getImg('coupon'), color: i+1==list.length?textColor:c1,),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    RichText(
                        text: TextSpan(
                            text: '¥',
                            style: TextStyle(
                                color: i+1==list.length?textColor:c1, fontSize: 20, fontWeight: FontWeight.w500),
                            children: [
                              TextSpan(text: '500', style: TextStyle(fontSize: 30)),
                            ])),
                    Column(
                      children: <Widget>[
                        Text('全品类', style: TextStyle(fontSize: 16),),
                        Text('满1500可用', style: TextStyle(fontSize: 16)),
                      ],
                    )
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('限主店使用', style: TextStyle(color: textColor),),
                    Text('2019-01-21-2019-02-21', style: TextStyle(color: textColor),),
                  ],
                ),
              )
            ],
          ),
        ),
        width: getRange(context),
        height: 120,
        margin: EdgeInsets.only(left: 15, right: 15, top: 15),
      );
}
