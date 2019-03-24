import 'package:flutter/material.dart';
import 'package:myh_shop/common.dart';
import 'package:myh_shop/widget/MyAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:myh_shop/widget/MyButton.dart';
import 'package:myh_shop/widget/MyInput2.dart';
import 'package:myh_shop/widget/MyItem.dart';

class Recharge extends StatefulWidget {
  @override
  _RechargeState createState() => _RechargeState();
}

class _RechargeState extends State<Recharge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg2,
      appBar: MyAppBar(
        title: Text('账户充值'),
        actions: <Widget>[
          CupertinoButton(child: Text('充值记录'), onPressed: (){})
        ],
      ),
      body: ListView(
        children: <Widget>[
          MyItem(child: Text('¥256', style: TextStyle(fontSize: 18),), label: '当前余额',),
          MyInput2(label: '充值金额', hintText: '请输入充值金额',),
          MyInput2(label: '赠送金额', hintText: '赠送金额',),
          Padding(
            padding: const EdgeInsets.all(30),
            child: MyButton(title: '确认充值', onPressed: () {},),
          ),
        ],
      ),
    );
  }
}
