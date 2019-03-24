import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myh_shop/common.dart';
import 'package:myh_shop/widget/MyAppBar.dart';
import 'package:myh_shop/widget/MyButton.dart';
import 'package:myh_shop/widget/MyInput.dart';

class Royalty extends StatefulWidget {
  final int id;

  Royalty(this.id);

  @override
  _RoyaltyState createState() => _RoyaltyState();
}

class _RoyaltyState extends State<Royalty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: Text('提成录入'),
        actions: <Widget>[
          CupertinoButton(
              child: Text(
                '取消提成',
                style: TextStyle(color: c1),
              ),
              onPressed: () {})
        ],
      ),
      body: Container(
        color: bg2,
        child: ListView(
          children: <Widget>[
            Container(
              height: 50,
              padding: EdgeInsets.only(left: 10, right: 10),
              color: bg2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    '可用消费提成金额',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    '¥1800.00',
                    style: TextStyle(fontSize: 16, color: c1),
                  ),
                ],
              ),
            ),
            Container(color: bg, height: 10,),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.only(left: 10),
              color: bg2,
              alignment: Alignment.centerLeft,
              height: 50,
              child: Text(
                '消费提成录入',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
            _item(),
            _item(),
            _item(),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text('注：填完比例后，点击添加', style: TextStyle(color: textColor,fontSize: 15),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50, top: 20),
              child: MyButton(onPressed: () {}, title: '提成录入',),
            ),
          ],
        ),
      ),
    );
  }

  Widget _item()=>Column(
    children: <Widget>[
      Container(
        padding: EdgeInsets.only(left: 10),
        color: bg2,
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              width: 40,
              child: Text(
                '美容师',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 13),
              ),
            ),
            Container(
              width: getRange(context) / 4,
              height: 35,
              padding: EdgeInsets.only(left: 8, right: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Text(
                      '亚索亚索',
                      style: TextStyle(
                          fontSize: 13, fontWeight: FontWeight.w500),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Icon(Icons.keyboard_arrow_down, color: textColor,)
                ],
              ),
              decoration: BoxDecoration(
                  border: Border.all(color: myColor(240, 241, 242)),
                  borderRadius: BorderRadius.circular(20)),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: myColor(240, 241, 242)),
                  borderRadius: BorderRadius.circular(20)),
              alignment: Alignment.center,
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    suffix: Text(
                      '% ',
                      style: TextStyle(fontSize: 16),
                    ),
                    suffixStyle: TextStyle(color: textColor),
                    hintText: '请输入数字',
                    hintStyle: TextStyle(fontSize: 12),
                    contentPadding: EdgeInsets.all(0),
                    border: InputBorder.none),
              ),
              width: getRange(context) / 4,
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: MyButton(
                onPressed: () {},
                height: 35,
                title: '添加',
                width: getRange(context) / 5,
                color: disColor,
              ),
            )
          ],
        ),
      ),
      Divider(
        height: 0,
      ),
    ],
  );

  void showMyPicker(BuildContext context) async {
    showCupertinoModalPopup(
        context: context,
        builder: (_) => Container(
          height: getRange(context, type: 2) / 3,
          child: CupertinoApp(
            home: CupertinoPicker(
                useMagnifier: true,
                backgroundColor: Colors.white,
                itemExtent: 30,
                magnification: 1.2,
                onSelectedItemChanged: (v) {
                  print(v);
                },
                children: [
                  Center(child: Text('test')),
                  Center(child: Text('test')),
                  Center(child: Text('test')),
                  Center(child: Text('test')),
                ]),
          ),
        ));
  }
}
