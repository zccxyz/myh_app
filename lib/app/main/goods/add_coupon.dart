import 'package:flutter/material.dart';
import 'package:myh_shop/common.dart';
import 'package:myh_shop/widget/MyAppBar.dart';
import 'package:myh_shop/widget/MyButton.dart';
import 'package:myh_shop/widget/MyInput2.dart';
import 'package:myh_shop/widget/MyItem.dart';

class AddCoupon extends StatefulWidget {
  @override
  _AddCouponState createState() => _AddCouponState();
}

class _AddCouponState extends State<AddCoupon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg2,
      appBar: MyAppBar(
        title: Text('新增优惠券'),
      ),
      body: ListView(
        children: <Widget>[
          MyItem(
            child: Text(
              '点击选择类型',
              style: TextStyle(color: textColor, fontSize: 16),
            ),
            label: '类$kg型',
          ),
          MyInput2(
            label: '名$kg称',
            hintText: '请输入优惠券名称',
          ),
          MyInput2(
            label: '数$kg量',
            hintText: '请输入优惠券数量',
          ),
          MyInput2(
            label: '领取上限',
            hintText: '没人最多领取x张',
          ),
          MyItem(
              label: '属$kg性',
              child: Row(
                children: <Widget>[
                  Text(
                    '满',
                    style: TextStyle(fontSize: 16),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(5), hintText: '0.00'),
                      textAlign: TextAlign.center,
                    ),
                    width: 60,
                    alignment: Alignment.center,
                  ),
                  Text(
                    '减',
                    style: TextStyle(fontSize: 16),
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(5), hintText: '0.00'),
                      textAlign: TextAlign.center,
                    ),
                    width: 60,
                    alignment: Alignment.center,
                  ),
                ],
              )),
          MyItem(
              label: '日$kg期',
              child: Row(
                children: <Widget>[
                  Text(
                    '选取开始时间',
                    style: TextStyle(color: textColor, fontSize: 16),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '-',
                      style: TextStyle(color: textColor, fontSize: 16),
                    ),
                  ),
                  Text(
                    '选取结束时间',
                    style: TextStyle(color: textColor, fontSize: 16),
                  ),
                ],
              )),
          Padding(
            padding: const EdgeInsets.all(30),
            child: MyButton(
              title: '创建',
              onPressed: () {},
              height: 40,
            ),
          ),
        ],
      ),
    );
  }
}
