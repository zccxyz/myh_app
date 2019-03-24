import 'package:flutter/material.dart';
import 'package:myh_shop/common.dart';
import 'package:myh_shop/widget/MyAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:myh_shop/widget/MyButton.dart';

class CheckDetail extends StatefulWidget {
  @override
  _CheckDetailState createState() => _CheckDetailState();
}

class _CheckDetailState extends State<CheckDetail> {
  List list = [1, 1, 1, 1, 1, 1, 1, 1];
  bool zt = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: Text('2019-03-21'),
        actions: <Widget>[
          CupertinoButton(
              child: Icon(
                Icons.date_range,
              ),
              onPressed: () {})
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Column(
              children: <Widget>[
                ListTile(
                  onTap: (){
                    setState(() {
                      zt = !zt;
                    });
                  },
                  title: Text('消费提成'),
                  trailing: zt?Icon(Icons.keyboard_arrow_down):Icon(Icons.chevron_right),
                ),
                AnimatedCrossFade(
                    firstChild: Offstage(),
                    secondChild: Container(
                      width: getRange(context) * 2,
                      constraints: BoxConstraints(
                          maxHeight: getRange(context, type: 2) / 2),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Container(
                              color: tableBg,
                              width: getRange(context) * 2,
                              child: ListView.builder(
                                itemBuilder: (_, i) => _item(i),
                                itemCount: list.length,
                              ))
                        ],
                      ),
                    ),
                    crossFadeState: zt
                        ? CrossFadeState.showSecond
                        : CrossFadeState.showFirst,
                    duration: Duration(milliseconds: 200))
              ],
            ),
            color: bg2,
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Column(
              children: <Widget>[
                ListTile(
                  onTap: (){
                    setState(() {
                      zt = !zt;
                    });
                  },
                  title: Text('消耗提成'),
                  trailing: zt?Icon(Icons.keyboard_arrow_down):Icon(Icons.chevron_right),
                ),
                AnimatedCrossFade(
                    firstChild: Offstage(),
                    secondChild: Container(
                      width: getRange(context) * 2,
                      constraints: BoxConstraints(
                          maxHeight: getRange(context, type: 2) / 2),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Container(
                              color: tableBg,
                              width: getRange(context) * 2,
                              child: ListView.builder(
                                itemBuilder: (_, i) => _item(i),
                                itemCount: list.length,
                              ))
                        ],
                      ),
                    ),
                    crossFadeState: zt
                        ? CrossFadeState.showSecond
                        : CrossFadeState.showFirst,
                    duration: Duration(milliseconds: 200))
              ],
            ),
            color: bg2,
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Column(
              children: <Widget>[
                ListTile(
                  onTap: (){
                    setState(() {
                      zt = !zt;
                    });
                  },
                  title: Text('手工提成'),
                  trailing: zt?Icon(Icons.keyboard_arrow_down):Icon(Icons.chevron_right),
                ),
                AnimatedCrossFade(
                    firstChild: Offstage(),
                    secondChild: Container(
                      width: getRange(context) * 2,
                      constraints: BoxConstraints(
                          maxHeight: getRange(context, type: 2) / 2),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Container(
                              color: tableBg,
                              width: getRange(context) * 2,
                              child: ListView.builder(
                                itemBuilder: (_, i) => _item(i),
                                itemCount: list.length,
                              ))
                        ],
                      ),
                    ),
                    crossFadeState: zt
                        ? CrossFadeState.showSecond
                        : CrossFadeState.showFirst,
                    duration: Duration(milliseconds: 200))
              ],
            ),
            color: bg2,
          ),
        ],
      ),
    );
  }

  Widget _item(int i) {
    if (i == 0) {
      return Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                  child: Container(
                child: Text('员工'),
                alignment: Alignment.center,
                color: tableBg,
                height: 50,
              )),
              Expanded(
                  child: Container(
                child: Text('提成类型'),
                alignment: Alignment.center,
                color: tableBg,
                height: 50,
              )),
              Expanded(
                  child: Container(
                child: Text('名称'),
                alignment: Alignment.center,
                color: tableBg,
                height: 50,
              )),
              Expanded(
                  child: Container(
                child: Text('客户'),
                alignment: Alignment.center,
                color: tableBg,
                height: 50,
              )),
              Expanded(
                  child: Container(
                child: Text('总消费'),
                alignment: Alignment.center,
                color: tableBg,
                height: 50,
              )),
              Expanded(
                  child: Container(
                child: Text('提成业绩'),
                alignment: Alignment.center,
                color: tableBg,
                height: 50,
              )),
              Expanded(
                  child: Container(
                child: Text('时间'),
                alignment: Alignment.center,
                color: tableBg,
                height: 50,
              )),
              Expanded(
                  child: Container(
                child: Text('操作'),
                alignment: Alignment.center,
                color: tableBg,
                height: 50,
              )),
            ],
          ),
          Divider(
            height: 0,
          ),
        ],
      );
    } else {
      return Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                  child: Container(
                child: Text('亚索'),
                alignment: Alignment.center,
                color: tableBg,
                height: 50,
              )),
              Expanded(
                  child: Container(
                child: Text('按提成'),
                alignment: Alignment.center,
                color: tableBg,
                height: 50,
              )),
              Expanded(
                  child: Container(
                child: Text('面部护理'),
                alignment: Alignment.center,
                color: tableBg,
                height: 50,
              )),
              Expanded(
                  child: Container(
                child: Text('亚索'),
                alignment: Alignment.center,
                color: tableBg,
                height: 50,
              )),
              Expanded(
                  child: Container(
                child: Text('390.22'),
                alignment: Alignment.center,
                color: tableBg,
                height: 50,
              )),
              Expanded(
                  child: Container(
                child: Text('120.01'),
                alignment: Alignment.center,
                color: tableBg,
                height: 50,
              )),
              Expanded(
                  child: Container(
                child: Text('2019-02-32'),
                alignment: Alignment.center,
                color: tableBg,
                height: 50,
              )),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: MyButton(
                  title: '修改',
                  height: 30,
                  onPressed: () {},
                ),
              )),
            ],
          ),
          Divider(
            height: 0,
          ),
        ],
      );
    }
  }
}
