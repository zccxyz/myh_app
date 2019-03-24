import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:myh_shop/common.dart';
import 'package:myh_shop/widget/MyAppBar.dart';
import 'package:myh_shop/widget/MyInput.dart';

class OutInLogs extends StatefulWidget {
  @override
  _OutInLogsState createState() => _OutInLogsState();
}

class _OutInLogsState extends State<OutInLogs> {
  List list = [1, 2, 2, 2, 2, 2, 22, 2, 2];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      child: Scaffold(
        appBar: MyAppBar(
          title: Text('出入库流水记录'),
          bottom: PreferredSize(
              child: Column(
                children: <Widget>[
                  TabBar(
                    tabs: [
                      Tab(
                        text: '入库',
                      ),
                      Tab(
                        text: '出库',
                      ),
                    ],
                    indicatorSize: TabBarIndicatorSize.label,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(
                              top: 10, bottom: 20, left: 10),
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
                    Expanded(child: Center(child: Text('入库时间'))),
                    Expanded(child: Center(child: Text('名称'))),
                    Expanded(child: Center(child: Text('入库数量'))),
                    Expanded(child: Center(child: Text('操作人'))),
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
      length: 2,
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
                        child: Text('亚索',
                            maxLines: 1, overflow: TextOverflow.ellipsis))),
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
