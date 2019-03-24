import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:myh_shop/common.dart';
import 'package:myh_shop/widget/MyAppBar.dart';
import 'package:myh_shop/widget/MyButton.dart';
import 'package:flutter/cupertino.dart';

class Month extends StatefulWidget {
  @override
  _DilyWaterState createState() => _DilyWaterState();
}

class _DilyWaterState extends State<Month> {
  List list = [1, 2, 2, 2, 2, 2, 22, 2, 2];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: Text('每月业绩核对'),
        actions: <Widget>[
          CupertinoButton(child: Icon(Icons.date_range), onPressed: (){
            showMyDate(context);
          })
        ],
        bottom: PreferredSize(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  PhysicalShape(
                    clipper: ShapeBorderClipper(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    color: Colors.transparent,
                    elevation: 5,
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            myColor(226, 144, 136),
                            myColor(208, 81, 53)
                          ]),
                          borderRadius: BorderRadius.circular(10)),
                      height: 60,
                      width: getRange(context) / 4 - 10,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            '消费业绩',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text('5825365.22',
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                  PhysicalShape(
                    clipper: ShapeBorderClipper(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    color: Colors.transparent,
                    elevation: 5,
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            myColor(238, 218, 152),
                            myColor(232, 181, 74)
                          ]),
                          borderRadius: BorderRadius.circular(10)),
                      height: 60,
                      width: getRange(context) / 4 - 10,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            '消耗总业绩',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text('5825365.22',
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                  PhysicalShape(
                    clipper: ShapeBorderClipper(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    color: Colors.transparent,
                    elevation: 5,
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            myColor(230, 133, 161),
                            myColor(225, 80, 95)
                          ]),
                          borderRadius: BorderRadius.circular(10)),
                      height: 60,
                      width: getRange(context) / 4 - 10,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            '总手工',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text('5825365.22',
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                  PhysicalShape(
                    clipper: ShapeBorderClipper(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    color: Colors.transparent,
                    elevation: 5,
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            myColor(130, 189, 253),
                            myColor(81, 141, 250)
                          ]),
                          borderRadius: BorderRadius.circular(10)),
                      height: 60,
                      width: getRange(context) / 4 - 10,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            '总提成',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text('5825365.22',
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            preferredSize: Size(getRange(context), 70)),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          alignment: Alignment.center,
          child: MyButton(
            onPressed: () {},
            title: '全部业绩',
          ),
          height: 50,
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
                  Expanded(child: Center(child: Text('员工'))),
                  Expanded(child: Center(child: Text('总消费'))),
                  Expanded(child: Center(child: Text('消费提成'))),
                  Expanded(child: Center(child: Text('总消耗'))),
                  Expanded(child: Center(child: Text('消耗提成'))),
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
                      '亚索',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ))),
            Expanded(
                child: Center(
                    child: Text(
                      '1600.01',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ))),
            Expanded(
                child: Center(
                    child: Text(
                      '240.00',
                      maxLines: 1,
                      style: TextStyle(color: Colors.orange),
                      overflow: TextOverflow.ellipsis,
                    ))),
            Expanded(
                child: Center(
                    child: Text('520.00',
                        maxLines: 1, overflow: TextOverflow.ellipsis))),
            Expanded(
                child: Center(
                    child: Text('263.25',
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
