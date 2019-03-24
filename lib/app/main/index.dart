import 'package:flutter/material.dart';
import 'package:myh_shop/app/main/warehouse/ware_list.dart';
import 'package:myh_shop/common.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  List ware = [];
  Map data = {};

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        primary: false,
        slivers: <Widget>[
          SliverAppBar(
            leading: Offstage(),
            brightness: Brightness.dark,
            title: Text(
              '美约会',
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
            actions: <Widget>[
              IconButton(
                  icon: Image.asset(
                    'img/1_03.png',
                    width: 25.0,
                  ),
                  onPressed: () {})
            ],
            pinned: true,
            expandedHeight: 350.0,
            flexibleSpace: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                    colors: [myColor(209, 150, 255), myColor(126, 129, 249)],
                    begin: Alignment.bottomLeft,
                  )),
                  height: 400.0 + MediaQuery.of(context).padding.top,
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: 50 + MediaQuery.of(context).padding.top,
                        left: 15.0,
                        right: 15.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              '今日总营业额',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 16.0),
                            ),
                            RichText(
                                text: TextSpan(
                                    text: '¥',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                    children: [
                                  TextSpan(
                                      text: '${data['today_money']}',
                                      style: TextStyle(
                                          fontSize: 25.0,
                                          fontWeight: FontWeight.w500)),
                                ])),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              RichText(
                                text: TextSpan(text: '消耗金额', children: [
                                  TextSpan(text: '    ¥'),
                                  TextSpan(
                                      text: '${data['consume_total']}',
                                      style: TextStyle(fontSize: 20.0)),
                                ]),
                              ),
                              RichText(
                                text: TextSpan(text: '今日到店', children: [
                                  TextSpan(
                                      text: '   ${data['arrival_total']}',
                                      style: TextStyle(fontSize: 20.0)),
                                ]),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              RichText(
                                text: TextSpan(text: '操作项目/套盒数', children: [
                                  TextSpan(
                                      text: '   ${data['items_total']}',
                                      style: TextStyle(fontSize: 20.0)),
                                ]),
                              ),
                              RichText(
                                text: TextSpan(text: '新客户', children: [
                                  TextSpan(
                                      text: '   ${data['arrival_total']}',
                                      style: TextStyle(fontSize: 20.0)),
                                ]),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            bottom: PreferredSize(
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        height: 120.0,
                        padding: EdgeInsets.only(
                            left: 15.0, right: 15.0, bottom: 15.0, top: 80),
                        width: MediaQuery.of(context).size.width,
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Image.asset(
                              'img/1_17.png',
                              height: 15.0,
                            ),
                            data['bir_member'] != null &&
                                    data['bir_member'].length > 0
                                ? Expanded(
                                    child: Swiper(
                                      itemCount: 3,
                                      itemBuilder: (_, i) => _item(i),
                                      scrollDirection: Axis.vertical,
                                      autoplay: true,
                                    ),
                                  )
                                : Text(
                                    '暂无数据',
                                    style: TextStyle(color: textColor),
                                  ),
                            Image.asset(
                              'img/1_20.png',
                              height: 15.0,
                            ),
                          ],
                        ),
                      ),
                      bottom: 10,
                    ),
                    Positioned(
                      child: Image.asset(
                        'img/bl2.png',
                        fit: BoxFit.fitWidth,
                        width: MediaQuery.of(context).size.width,
                      ),
                      bottom: 120.0,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          bottom: 60.0, left: 15.0, right: 15.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        elevation: 4.0,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                                child: Container(
                              height: 88.0,
                              child: Column(
                                children: <Widget>[
                                  Image.asset(
                                    'img/1_07.png',
                                    height: 30.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      '流失人员预警',
                                      style: TextStyle(
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ),
                                  Text(
                                    '${data['lost_member']}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                ],
                              ),
                            )),
                            Expanded(
                                child: Container(
                              height: 88.0,
                              child: Column(
                                children: <Widget>[
                                  Image.asset('img/1_09.png', height: 30.0),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('游离会员',
                                        style: TextStyle(
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.w300)),
                                  ),
                                  Text('${data['untime_member']}',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18.0)),
                                ],
                              ),
                            )),
                            Expanded(
                                child: Container(
                              height: 88.0,
                              child: Column(
                                children: <Widget>[
                                  Image.asset('img/1_11.png', height: 30.0),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('新客户追踪',
                                        style: TextStyle(
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.w300)),
                                  ),
                                  Text('${data['new_customer']}',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18.0)),
                                ],
                              ),
                            )),
                          ],
                        ),
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: 130.0,
                    ),
                    Positioned(
                      child: Container(
                        color: bg,
                        width: MediaQuery.of(context).size.width,
                        height: 10.0,
                      ),
                      bottom: 0,
                    )
                  ],
                ),
                preferredSize: Size(MediaQuery.of(context).size.width, 50.0)),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.only(bottom: 10.0),
              color: Colors.white,
              child: Table(
                children: [
                  TableRow(children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'manage');
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'img/1_24.png',
                              height: 65.0,
                              width: 65.0,
                            ),
                            Text(
                              '客户管理',
                              style: TextStyle(
                                  fontSize: 15.0, fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        jump(context, 'consumption');
                      },
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'img/1_26.png',
                            height: 65.0,
                            width: 65.0,
                          ),
                          Text(
                            '消费',
                            style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        jump(context, 'arrears');
                      },
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'img/1_28.png',
                            height: 65.0,
                            width: 65.0,
                          ),
                          Text(
                            '欠款跟进',
                            style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    GestureDetector(
                      onTap: () {
                        jump(context, 'dily_water');
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'img/1_33.png',
                              height: 65.0,
                              width: 65.0,
                            ),
                            Text(
                              '每日流水',
                              style: TextStyle(
                                  fontSize: 15.0, fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        jump(context, 'check_list');
                      },
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'img/1_34.png',
                            height: 65.0,
                            width: 65.0,
                          ),
                          Text(
                            '业绩核对',
                            style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        jump(context, 'popularity_index');
                      },
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'img/1_35.png',
                            height: 65.0,
                            width: 65.0,
                          ),
                          Text(
                            '普及率',
                            style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'img/1_24.png',
                            height: 65.0,
                            width: 65.0,
                          ),
                          Text(
                            '打卡',
                            style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        jump(context, 'early_warning');
                      },
                      child: Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Image.asset(
                                'img/1_40.png',
                                height: 65.0,
                                width: 65.0,
                              ),
                              Text(
                                '仓库预警',
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w300),
                              )
                            ],
                          ),
                          ware.length > 0
                              ? Positioned(
                                  top: 0,
                                  right: 25.0,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.red,
                                    radius: 12.0,
                                    child: Text(
                                      '${ware.length}',
                                      style: TextStyle(
                                          fontSize: 10.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                )
                              : Offstage(),
                        ],
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Image.asset(
                          'img/1_41.png',
                          height: 65.0,
                          width: 65.0,
                        ),
                        Text(
                          '我的分店',
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ]),
                ],
              ),
            ),
          ]))
        ],
      ),
    );
  }

  Widget _item(int i) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10),
            width: getRange(context) / 4,
            child: Text(
              '    ${data['bir_member'][i]['name']}',
              style: TextStyle(fontWeight: FontWeight.w300),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Text(
              '${data['bir_member'][i]['birthday']}',
              style: TextStyle(fontWeight: FontWeight.w300),
            ),
          ),
        ],
      );

  @override
  void initState() {
    super.initState();
    getManage();
    getWare();
    getOrder();
  }

  void getWare() async {
    var rs = await get('warning_detail');
    if(rs!=null){
      if (rs['code'] == 1) {
        setState(() {
          ware = rs['res']['ware_details'];
        });
      } else {
        tip(context, rs['error']);
      }
    }
    print(rs);
  }

  void getOrder() async {
    var rs = await get('get_count');
    print(rs);
  }

  void getManage() async {
    var rs = await get('manager');
    if(rs!=null){
      if (rs['code'] == 0) {
        setState(() {
          data = rs['data'];
        });
      } else {
        tip(context, rs['msg']);
      }
    }
  }
}
