import 'package:flutter/material.dart';
import 'package:myh_shop/common.dart';
import 'package:myh_shop/widget/MyAppBar.dart';
import 'package:myh_shop/widget/MyInput.dart';

class InventoryInfo extends StatefulWidget {
  @override
  _InventoryInfoState createState() => _InventoryInfoState();
}

class _InventoryInfoState extends State<InventoryInfo> {
  List list = [1, 2, 2, 2, 2, 2, 22, 2, 2];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      child: Scaffold(
        appBar: MyAppBar(
          title: Text('盈亏数'),
          bottom: PreferredSize(
              child: Column(
                children: <Widget>[
                  TabBar(
                    tabs: [
                      Tab(
                        text: '产品',
                      ),
                      Tab(
                        text: '套盒',
                      ),
                      Tab(
                        text: '耗材',
                      ),
                    ],
                    indicatorSize: TabBarIndicatorSize.label,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, bottom: 20, left: 10, right: 10),
                    height: 35,
                    child: MyInput(
                      prefixIcon: Icon(
                        Icons.search,
                        color: textColor,
                      ),
                      hintText: '输入产品名称',
                    ),
                  ),
                ],
              ),
              preferredSize: Size(getRange(context), 110)),
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
                    Expanded(child: Center(child: Text('日期'))),
                    Expanded(child: Center(child: Text('盈亏数量'))),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(children: [
                  ListView.builder(
                    itemBuilder: (_, i) => _item(i),
                    itemCount: list.length,
                  ),
                  ListView(),
                  ListView(),
                ]),
              )
            ],
          ),
        ),
      ),
      length: 3,
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
                    child: Text('2019-06-39',
                        maxLines: 1, overflow: TextOverflow.ellipsis))),
            Expanded(
                child: Center(
                    child: Text('356',
                        maxLines: 1, overflow: TextOverflow.ellipsis))),
          ],
        ),
      ),
      Divider(
        height: 0,
      ),
    ],
  );
}
