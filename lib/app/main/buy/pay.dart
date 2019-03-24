import 'package:flutter/material.dart';
import 'package:myh_shop/app/main/buy/royalty.dart';
import 'package:myh_shop/common.dart';
import 'package:myh_shop/widget/MyAppBar.dart';
import 'package:myh_shop/widget/MyButton.dart';
import 'package:myh_shop/widget/MyInput2.dart';
import 'package:myh_shop/widget/MyInput3.dart';
import 'package:myh_shop/widget/MyItem.dart';

class Pay extends StatefulWidget {
  final int id;

  Pay(this.id);

  @override
  _PayState createState() => _PayState();
}

class _PayState extends State<Pay> {
  bool three = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: Text('订单结算'),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Container(
                  child: Text(
                    '订单信息',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                  ),
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 15, top: 10),
                ),
                MyItem(
                  label: '会$kg员',
                  child: Text('亚索'),
                ),
                MyItem(
                  label: '订单编号',
                  child: Text('123134564665'),
                ),
                MyItem(
                  label: '订单时间',
                  child: Text('2019-02-16 15:30:21'),
                ),
                MyItem(
                  label: '订单金额',
                  child: Text('¥1800.00'),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Container(
                  child: Text(
                    '支付方式',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                  ),
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 15, top: 10),
                ),
                Column(
                  children: <Widget>[
                    ListTile(
                      leading: Row(
                        children: <Widget>[
                          Icon(
                            Icons.account_balance_wallet,
                            color: c1,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              '现金支付',
                              style: TextStyle(fontSize: 17),
                            ),
                          )
                        ],
                      ),
                      trailing: Container(
                        margin: EdgeInsets.only(top: 8),
                        child: MyInput3(
                          hintText: '请输入金额',
                        ),
                        width: getRange(context) / 3,
                      ),
                    ),
                    Divider(
                      height: 0,
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    ListTile(
                      onTap: () {
                        setState(() {
                          three = !three;
                        });
                      },
                      leading: Row(
                        children: <Widget>[
                          Icon(
                            Icons.account_balance_wallet,
                            color: c1,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              '第三方支付',
                              style: TextStyle(fontSize: 17),
                            ),
                          )
                        ],
                      ),
                      trailing: AnimatedCrossFade(
                          firstChild: Icon(Icons.chevron_right),
                          secondChild: Icon(Icons.keyboard_arrow_down),
                          crossFadeState: three?CrossFadeState.showSecond:CrossFadeState.showFirst,
                          duration: Duration(milliseconds: 300)),
                    ),
                    Divider(
                      height: 0,
                    ),
                    AnimatedCrossFade(
                        firstChild: Offstage(),
                        secondChild: Container(
                          color: tableBg,
                          child: Column(
                            children: <Widget>[
                              ListTile(
                                leading: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.account_balance_wallet,
                                      color: c1,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        '支付宝',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                    )
                                  ],
                                ),
                                trailing: Container(
                                  margin: EdgeInsets.only(top: 8),
                                  child: MyInput3(
                                    hintText: '请输入金额',
                                    fillColor: tableBg,
                                  ),
                                  width: getRange(context) / 3,
                                ),
                              ),
                              Divider(
                                height: 0,
                              ),
                              ListTile(
                                leading: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.account_balance_wallet,
                                      color: c1,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        '微信支付',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                    )
                                  ],
                                ),
                                trailing: Container(
                                  margin: EdgeInsets.only(top: 8),
                                  child: MyInput3(
                                    hintText: '请输入金额',
                                    fillColor: tableBg,
                                  ),
                                  width: getRange(context) / 3,
                                ),
                              ),
                              Divider(
                                height: 0,
                              ),
                              ListTile(
                                leading: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.account_balance_wallet,
                                      color: c1,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        'POS机',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                    )
                                  ],
                                ),
                                trailing: Container(
                                  margin: EdgeInsets.only(top: 8),
                                  child: MyInput3(
                                    hintText: '请输入金额',
                                    fillColor: tableBg,
                                  ),
                                  width: getRange(context) / 3,
                                ),
                              ),
                              Divider(
                                height: 0,
                              ),
                              ListTile(
                                leading: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.account_balance_wallet,
                                      color: c1,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        '大众点评',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                    )
                                  ],
                                ),
                                trailing: Container(
                                  margin: EdgeInsets.only(top: 8),
                                  child: MyInput3(
                                    hintText: '请输入金额',
                                    fillColor: tableBg,
                                  ),
                                  width: getRange(context) / 3,
                                ),
                              ),
                              Divider(
                                height: 0,
                              ),
                              ListTile(
                                leading: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.account_balance_wallet,
                                      color: c1,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        '收钱吧',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                    )
                                  ],
                                ),
                                trailing: Container(
                                  margin: EdgeInsets.only(top: 8),
                                  child: MyInput3(
                                    hintText: '请输入金额',
                                    fillColor: tableBg,
                                  ),
                                  width: getRange(context) / 3,
                                ),
                              ),
                              Divider(
                                height: 0,
                              ),
                              ListTile(
                                leading: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.account_balance_wallet,
                                      color: c1,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        '美团',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                    )
                                  ],
                                ),
                                trailing: Container(
                                  margin: EdgeInsets.only(top: 8),
                                  child: MyInput3(
                                    hintText: '请输入金额',
                                    fillColor: tableBg,
                                  ),
                                  width: getRange(context) / 3,
                                ),
                              ),
                              Divider(
                                height: 0,
                              ),
                            ],
                          ),
                        ),
                        crossFadeState: three
                            ? CrossFadeState.showSecond
                            : CrossFadeState.showFirst,
                        duration: Duration(milliseconds: 300)),
                  ],
                ),
                Column(
                  children: <Widget>[
                    ListTile(
                      leading: Row(
                        children: <Widget>[
                          Icon(
                            Icons.account_balance_wallet,
                            color: c1,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              '余额抵扣',
                              style: TextStyle(fontSize: 17),
                            ),
                          )
                        ],
                      ),
                      trailing: Icon(Icons.chevron_right),
                    ),
                    Divider(
                      height: 0,
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    ListTile(
                      leading: Row(
                        children: <Widget>[
                          Icon(
                            Icons.account_balance_wallet,
                            color: c1,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              '积分抵扣',
                              style: TextStyle(fontSize: 17),
                            ),
                          )
                        ],
                      ),
                      trailing: Icon(Icons.chevron_right),
                    ),
                    Divider(
                      height: 0,
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    ListTile(
                      leading: Row(
                        children: <Widget>[
                          Icon(
                            Icons.account_balance_wallet,
                            color: c1,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              '储值卡',
                              style: TextStyle(fontSize: 17),
                            ),
                          )
                        ],
                      ),
                      trailing: Icon(Icons.chevron_right),
                    ),
                    Divider(
                      height: 0,
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    ListTile(
                      leading: Row(
                        children: <Widget>[
                          Icon(
                            Icons.account_balance_wallet,
                            color: c1,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              '赠送',
                              style: TextStyle(fontSize: 17),
                            ),
                          )
                        ],
                      ),
                      trailing: Icon(Icons.chevron_right),
                    ),
                    Divider(
                      height: 0,
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    ListTile(
                      leading: Row(
                        children: <Widget>[
                          Icon(
                            Icons.account_balance_wallet,
                            color: c1,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              '优惠券',
                              style: TextStyle(fontSize: 17),
                            ),
                          )
                        ],
                      ),
                      trailing: Icon(Icons.chevron_right),
                    ),
                    Divider(
                      height: 0,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    ListTile(
                      leading: Text(
                        '剩余未支付',
                        style: TextStyle(fontSize: 16),
                      ),
                      trailing: Text(
                        '¥1800.00',
                        style: TextStyle(color: c1, fontSize: 16),
                      ),
                    ),
                    Divider(
                      height: 0,
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    ListTile(
                      leading: Text(
                        '优惠券减免',
                        style: TextStyle(fontSize: 16),
                      ),
                      trailing: Text(
                        '-¥100.00',
                        style: TextStyle(color: c1, fontSize: 16),
                      ),
                    ),
                    Divider(
                      height: 0,
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    ListTile(
                      leading: Text(
                        '积分抵扣',
                        style: TextStyle(fontSize: 16),
                      ),
                      trailing: Text(
                        '-¥100.00',
                        style: TextStyle(color: c1, fontSize: 16),
                      ),
                    ),
                    Divider(
                      height: 0,
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    ListTile(
                      leading: Text(
                        '赠送金额',
                        style: TextStyle(fontSize: 16),
                      ),
                      trailing: Text(
                        '-¥100.00',
                        style: TextStyle(color: c1, fontSize: 16),
                      ),
                    ),
                    Divider(
                      height: 0,
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: EdgeInsets.only(left: 10, right: 10),
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              RichText(
                  text: TextSpan(
                      text: '合计：',
                      children: [
                        TextSpan(
                            text: '¥',
                            style: TextStyle(color: c1, fontSize: 13)),
                        TextSpan(
                            text: '2500',
                            style: TextStyle(color: c1, fontSize: 18)),
                      ],
                      style: TextStyle(
                        color: Colors.black,
                      ))),
              MyButton(
                onPressed: () {
                  jump2(context, Royalty(1));
                },
                title: '结算',
                width: getRange(context) / 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
