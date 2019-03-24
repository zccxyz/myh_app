import 'package:flutter/material.dart';
import 'package:myh_shop/app/main/buy/buy_items.dart';
import 'package:myh_shop/common.dart';
import 'package:myh_shop/widget/MyAppBar.dart';
import 'package:flutter/cupertino.dart';

class Items extends StatelessWidget {
  final int id;

  const Items(this.id, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List list = [1, 2, 4, 5, 5, 6, 7, 4, 3, 4, 5];
    return Scaffold(
      appBar: MyAppBar(
        title: Text('会员项目'),
        actions: <Widget>[
          CupertinoButton(
              child: Text(
                '购买项目',
                style: TextStyle(color: c1),
              ),
              onPressed: () {
                jump2(context, BuyItems(2));
              })
        ],
        bottom: PreferredSize(
            child: Container(
              height: 70,
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: Column(
                    children: <Widget>[
                      Text(
                        '剩余次数',
                        style: TextStyle(color: textColor, fontSize: 18),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text(
                          '123',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  )),
                  Expanded(
                      child: Column(
                    children: <Widget>[
                      Text(
                        '总欠款',
                        style: TextStyle(color: textColor, fontSize: 18),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text(
                          '¥235.00',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  )),
                ],
              ),
            ),
            preferredSize: Size(getRange(context), 70)),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 10),
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              height: 50,
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: Text(
                    '类别',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: textColor, fontSize: 16),
                  )),
                  Expanded(
                      flex: 2,
                      child: Text('名称',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: textColor, fontSize: 16))),
                  Expanded(
                      flex: 2,
                      child: Text('价格',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: textColor, fontSize: 16))),
                  Expanded(
                      child: Text('余数',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: textColor, fontSize: 16))),
                  Expanded(
                    child: Text('购买日期',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: textColor,
                          fontSize: 16,
                        )),
                    flex: 2,
                  ),
                ],
              ),
            ),
            Divider(
              height: 0,
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.only(
                    left: 10, right: 10, bottom: getRange(context, type: 4)),
                itemBuilder: (_, i) => _item(i),
                itemCount: list.length,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column _item(int i) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 5, bottom: 5),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Chip(
                  padding: EdgeInsets.all(0),
                  label: Text(
                    '头部',
                    style: TextStyle(color: Colors.white),
                  ),
                  backgroundColor: c1,
                ),
              ),
              Expanded(
                  flex: 2,
                  child: Text(
                    '螺旋手里剑',
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  )),
              Expanded(
                  flex: 2,
                  child: Text('¥2351.23',
                      maxLines: 1,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis)),
              Expanded(
                  child: Text(
                '25',
                textAlign: TextAlign.center,
              )),
              Expanded(
                child: Text('2019-10-21', textAlign: TextAlign.center),
                flex: 2,
              ),
            ],
          ),
        ),
        Divider(
          height: 0,
        )
      ],
    );
  }
}
