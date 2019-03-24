import 'package:flutter/material.dart';
import 'package:myh_shop/app/main/member_manage/card.dart';
import 'package:myh_shop/app/main/member_manage/consume_detail.dart';
import 'package:myh_shop/app/main/member_manage/coupon.dart';
import 'package:myh_shop/app/main/member_manage/info.dart';
import 'package:myh_shop/app/main/member_manage/items.dart';
import 'package:myh_shop/app/main/member_manage/plan.dart';
import 'package:myh_shop/common.dart';
import 'package:myh_shop/widget/MyButton.dart';

class MemberInfo extends StatefulWidget {
  final int id;

  MemberInfo(this.id);

  @override
  _MemberInfoState createState() => _MemberInfoState();
}

class _MemberInfoState extends State<MemberInfo> {
  double width = 90;
  Map user;

  @override
  void initState() {
    super.initState();
    getSj();
  }

  void getSj() async {
    var rs =
        await get('vipDetails', data: {'id': widget.id, 'redirect_url': ''});
    if (rs != null) {
      print(rs);
      if (rs['code'] == 0) {
        setState(() {
          user = rs['data'];
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    print(user);
    return Material(
      color: Colors.white,
      child: Stack(
        children: <Widget>[
          user == null
              ? Center(
                  child: loading(),
                )
              : CustomScrollView(
                  slivers: <Widget>[
                    SliverAppBar(
                      brightness: Brightness.dark,
                      backgroundColor: c1,
                      leading: backButton(context, color: Colors.white),
                      pinned: true,
                      title: Text(
                        '会员信息',
                        style: TextStyle(color: Colors.white),
                      ),
                      centerTitle: true,
                      expandedHeight: 200,
                      flexibleSpace: FlexibleSpaceBar(
                        background: Stack(
                          children: <Widget>[
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 100,
                                width: getRange(context) - 20,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(4),
                                        topRight: Radius.circular(4))),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(top: 50),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            '${user['name']}',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 8),
                                            child: Image.asset(
                                              getImg(user['sex'] == 1
                                                  ? 'woman'
                                                  : 'man'),
                                              height: 18,
                                              color: textColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text(
                                      '${user['shop_num']}',
                                      style: TextStyle(color: textColor),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              child: Stack(
                                alignment: AlignmentDirectional.centerEnd,
                                children: <Widget>[
                                  Container(
                                    height: 25,
                                    width: 75,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        '录入',
                                        style: TextStyle(color: c1),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(30),
                                        border:
                                            Border.all(width: 2, color: c1)),
                                  ),
                                  Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                        border:
                                            Border.all(width: 2, color: c1)),
                                    child: Icon(
                                      Icons.edit,
                                      size: 15,
                                    ),
                                  )
                                ],
                              ),
                              bottom: 85,
                              left: getRange(context) / 2 -
                                  (getRange(context) - 20) / 4 -
                                  width / 2,
                            ),
                            Positioned(
                              child: Stack(
                                alignment: AlignmentDirectional.centerStart,
                                children: <Widget>[
                                  Container(
                                    height: 25,
                                    width: 75,
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Text(
                                        '电话',
                                        textAlign: TextAlign.end,
                                        style: TextStyle(color: c1),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(30),
                                        border:
                                            Border.all(width: 2, color: c1)),
                                  ),
                                  Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                        border:
                                            Border.all(width: 2, color: c1)),
                                    child: Icon(
                                      Icons.phone,
                                      size: 15,
                                    ),
                                  )
                                ],
                              ),
                              bottom: 85,
                              right: getRange(context) / 2 -
                                  (getRange(context) - 20) / 4 -
                                  width / 2,
                            ),
                            Positioned(
                              child: Center(
                                child: circularImg(
                                    'http://www.caisheng.net/UploadFiles/img_0_3534166376_2649719102_27.jpg',
                                    width),
                              ),
                              bottom: 50,
                              left: getRange(context) / 2 - width / 2,
                            )
                          ],
                        ),
                      ),
                    ),
                    SliverList(
                        delegate: SliverChildListDelegate([
                      Container(
                        child: Card(
                          elevation: 8,
                          margin: EdgeInsets.all(0),
                          child: Row(
                            children: <Widget>[
                              _item2('账户余额', '${user['balance']}'),
                              _item2('赠送余额', '${user['send_balance']}'),
                              _item2('总欠款', '${user['money']}'),
                              _item2('积分', '${user['integral']}'),
                            ],
                          ),
                        ),
                        padding: EdgeInsets.only(left: 10, right: 10),
                        height: 80,
                      ),
                      _item(context, '健康档案', '会员身体分析档案', 1),
                      _item(context, '消费明细', '全部消费明细', 2),
                      _item(context, '基本信息', '电话/生日/地址', 3),
                      _item(context, '优惠券查看', '共2张', 4),
                      _item(context, '会员项目', '剩余项目10次', 5),
                      _item(context, '会员套盒', '剩余项目10次', 6),
                      _item(context, '会员产品', '累计购买¥6930.00', 7),
                      _item(context, '所持卡项', '总余额¥6930.00', 8),
                      _item(context, '方案打包', '累计购买¥6930.00', 9),
                      _item(context, '客户需求', '总余额¥6930.00', 10),
                      bottom(context, height: getRange(context, type: 4) + 50),
                    ])),
                  ],
                ),
          Positioned(
            bottom: 0,
            child: PhysicalShape(
              clipper:
                  const ShapeBorderClipper(shape: RoundedRectangleBorder()),
              color: Colors.white,
              elevation: 10,
              child: Container(
                padding: EdgeInsets.only(bottom: getRange(context, type: 4)),
                alignment: Alignment.center,
                child: MyButton(
                  onPressed: () {},
                  title: '删除会员',
                ),
                height: 50 + getRange(context, type: 4),
                width: getRange(context),
              ),
            ),
          )
        ],
      ),
    );
  }

  Expanded _item2(String text, String text2) {
    return Expanded(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          text,
          style: TextStyle(color: textColor),
        ),
        Padding(padding: EdgeInsets.all(5)),
        Text(
          '¥$text2',
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    ));
  }

  Column _item(
    BuildContext context,
    String title,
    String text,
    int type,
  ) {
    return Column(
      children: <Widget>[
        ListTile(
          onTap: () async {
            switch (type) {
              case 1:
                //jump2(context, ConsumeDetail(widget.id));
                break;
              case 2:
                jump2(context, ConsumeDetail(widget.id));
                break;
              case 3:
                var rs = await Navigator.push(context,
                    MaterialPageRoute(builder: (_) => Info(widget.id)));
                break;
              case 4:
                jump2(
                    context,
                    Coupon(
                      id: widget.id,
                    ));
                break;
              case 5:
                jump2(context, Items(widget.id));
                break;
              case 8:
                jump2(context, MyCard(widget.id));
                break;
              case 9:
                jump2(context, Plan(widget.id));
                break;
              default:
                break;
            }
            getSj();
          },
          leading: Icon(Icons.add),
          title: Text(title),
          trailing: Container(
            width: getRange(context) / 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  text,
                  style: TextStyle(color: textColor),
                ),
                Icon(
                  Icons.chevron_right,
                  color: textColor,
                ),
              ],
            ),
          ),
        ),
        Divider(
          height: 0,
        )
      ],
    );
  }
}
