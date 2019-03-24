import 'package:flutter/material.dart';
import 'package:myh_shop/common.dart';
import 'package:myh_shop/widget/MyAppBar.dart';
import 'package:myh_shop/widget/MyButton.dart';
import 'package:myh_shop/widget/MyInput2.dart';

class EditCard extends StatefulWidget {
  final int cardId;
  final int id;

  EditCard(this.id, this.cardId);

  @override
  _EditCardState createState() => _EditCardState();
}

class _EditCardState extends State<EditCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg2,
      appBar: MyAppBar(
        title: Text('会员卡编辑'),
      ),
      body: ListView(
        children: <Widget>[
          MyInput2(label: '卡项名称',),
          MyInput2(label: '卡项余额', suffixText: '元',),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50, top: 20),
            child: MyButton(onPressed: () {}, title: '提成录入',),
          ),
        ],
      ),
    );
  }
}
