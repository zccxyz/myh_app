import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:myh_shop/app/main/warehouse/inventory_info.dart';
import 'package:myh_shop/common.dart';
import 'package:myh_shop/widget/MyAppBar.dart';
import 'package:myh_shop/widget/MyButton.dart';
import 'package:myh_shop/widget/MyInput.dart';
import 'package:myh_shop/widget/MyInput2.dart';
import 'package:flutter/cupertino.dart';

class Inventory extends StatefulWidget {
  final int id;

  Inventory(this.id);

  @override
  _InventoryState createState() => _InventoryState();
}

class _InventoryState extends State<Inventory> {
  List list = [1, 2, 2, 2, 2, 2, 22, 2, 2];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      child: Scaffold(
        appBar: MyAppBar(
          title: Text('库存盘点'),
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
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(top: 10, bottom: 20, left: 10),
                          height: 35,
                          child: MyInput(
                            prefixIcon: Icon(
                              Icons.search,
                              color: textColor,
                            ),
                            hintText: '输入产品名称',
                          ),
                        ),
                      ),
                      IconButton(
                          icon: Icon(Icons.date_range),
                          onPressed: () {
                            showMyDate(context);
                          }),
                    ],
                  ),
                ],
              ),
              preferredSize: Size(getRange(context), 110)),
          actions: <Widget>[
            CupertinoButton(child: Text('盈亏数'), onPressed: () {
              jump2(context, InventoryInfo());
            })
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 50,
            padding: EdgeInsets.only(top: 5, bottom: 5, left: 30, right: 30),
            child: MyButton(
              onPressed: () {},
              title: '保存',
            ),
          ),
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
                    Expanded(child: Center(child: Text('库存数量'))),
                    Expanded(child: Center(child: Text('盘点数'))),
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
                Expanded(
                    child: Center(
                        child: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: MyInput2(
                    label: '',
                    type: 2,
                    hintText: '请填写',
                    height: 60,
                    showBottomLine: false,
                  ),
                ))),
              ],
            ),
          ),
          Divider(
            height: 0,
          ),
        ],
      );

  void showMyDate(BuildContext context,
      {bool showTitleActions = false,
      DateTime minTime,
      DateTime maxTime}) async {
    DatePicker.showDatePicker(context,
        showTitleActions: showTitleActions,
        maxTime: maxTime,
        minTime: minTime,
        locale: LocaleType.zh,
        onChanged: (DateTime d) {});
  }
}
