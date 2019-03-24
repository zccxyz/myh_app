import 'package:flutter/material.dart';
import 'package:myh_shop/common.dart';
import 'package:myh_shop/widget/MyAppBar.dart';
import 'package:myh_shop/widget/MyButton.dart';
import 'package:myh_shop/widget/MyInput.dart';

class Change extends StatefulWidget {
  @override
  _ChangeState createState() => _ChangeState();
}

class _ChangeState extends State<Change> {
  List list = [1, 2, 2, 2, 2, 2, 22, 2, 2];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: Text('商品调仓'),
        bottom: PreferredSize(
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10, bottom: 10),
              child: MyInput(
                prefixIcon: Icon(
                  Icons.search,
                  color: textColor,
                ),
                hintText: '输入商品名称',
              ),
            ),
            preferredSize: Size(getRange(context), 50)),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          children: <Widget>[
            Container(
              height: 50,
              color: bg2,
              child: Row(
                children: <Widget>[
                  Expanded(child: Center(child: Text('名称'))),
                  Expanded(child: Center(child: Text('剩余库存'))),
                  Expanded(child: Center(child: Text('操作'))),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (_, i) => _item(i),
                itemCount: list.length,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _item(int i) => Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            height: 60,
            color: bg2,
            child: Row(
              children: <Widget>[
                Expanded(
                    child: Center(
                        child: Text(
                  'gtx1080ti败家之眼',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ))),
                Expanded(
                    child: Center(
                        child: Text(
                  '1',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ))),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: MyButton(onPressed: () {}, title: '调仓'),
                )),
              ],
            ),
          ),
          Divider(
            height: 0,
          ),
        ],
      );
}
