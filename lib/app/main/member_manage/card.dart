import 'package:flutter/material.dart';
import 'package:myh_shop/app/main/member_manage/edit_card.dart';
import 'package:myh_shop/common.dart';
import 'package:myh_shop/widget/MyAppBar.dart';
import 'package:myh_shop/widget/MyButton.dart';

class MyCard extends StatelessWidget {
  final int id;

  MyCard(this.id);

  @override
  Widget build(BuildContext context) {
    List list = [1, 2, 3, 4];
    return Scaffold(
      appBar: MyAppBar(
        title: Text('所持卡项'),
      ),
      body: Container(
        child: ListView.builder(
          itemBuilder: (c, i) => _item(c, i),
          itemCount: list.length,
        ),
        color: bg2,
      ),
    );
  }

  Widget _item(BuildContext c, int i) {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15, bottom: 15),
      height: 160,
      child: Card(
        color: c1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 20),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(
                    Icons.local_parking,
                    color: Colors.white,
                  ),
                  Text(
                    '金卡',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Text('余额',
                            style: TextStyle(fontSize: 18, color: Colors.white)),
                      ),
                      Text(
                        '¥200000000.00',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: MyButton(
                      title: '编辑',
                      onPressed: () {
                        jump2(c, EditCard(id, 2));
                      },
                      width: 80,
                      color: myColor(104, 128, 239),
                      height: 30,
                    ),
                  ),
                  MyButton(
                      title: '删除',
                      onPressed: () {},
                      width: 80,
                      height: 30,
                      color: myColor(104, 128, 239)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
