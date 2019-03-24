import 'package:flutter/material.dart';
import 'package:myh_shop/common.dart';
import 'package:flutter/cupertino.dart' show CupertinoButton;

class Rank extends StatefulWidget {
  @override
  _RankState createState() => _RankState();
}

class _RankState extends State<Rank> {
  List list = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bg,
      child: DefaultTabController(
        child: Material(
          child: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                title: Text('排行榜', style: TextStyle(color: Colors.white)),
                leading: backButton(context, color: Colors.white),
                pinned: true,
                backgroundColor: c1,
                brightness: Brightness.dark,
                actions: <Widget>[
                  CupertinoButton(
                    child: Text(
                      '周榜',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {},
                  )
                ],
                expandedHeight: 200,
                flexibleSpace: FlexibleSpaceBar(
                  background: Stack(
                    children: <Widget>[
                      Image.asset(
                        getImg('2.10_01'),
                        fit: BoxFit.fill,
                        height: 200 + getRange(context, type: 3),
                        width: getRange(context),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 15,
                        right: 15,
                        child: Container(
                          width: getRange(context),
                          height: 55,
                          decoration: BoxDecoration(
                              color: bg2,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10))),
                          child: TabBar(
                            tabs: [
                              Tab(
                                text: '全部',
                              ),
                              Tab(
                                text: '产品',
                              ),
                              Tab(
                                text: '套盒',
                              ),
                              Tab(
                                text: '卡项',
                              ),
                              Tab(
                                text: '方案',
                              ),
                            ],
                            indicatorSize: TabBarIndicatorSize.label,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SliverList(
                  delegate: SliverChildListDelegate([
                Container(
                  height: getRange(context, type: 2) -
                      200 -
                      getRange(context, type: 4) -
                      getRange(context, type: 3),
                  child: TabBarView(children: [
                    ListView.builder(
                      padding: EdgeInsets.all(0),
                      itemBuilder: (_, i) => _item(i),
                      itemCount: list.length,
                    ),
                    ListView.builder(
                      padding: EdgeInsets.all(0),
                      itemBuilder: (_, i) => _item(i),
                      itemCount: list.length,
                    ),
                    ListView.builder(
                      padding: EdgeInsets.all(0),
                      itemBuilder: (_, i) => _item(i),
                      itemCount: list.length,
                    ),
                    ListView.builder(
                      padding: EdgeInsets.all(0),
                      itemBuilder: (_, i) => _item(i),
                      itemCount: list.length,
                    ),
                    ListView.builder(
                      padding: EdgeInsets.all(0),
                      itemBuilder: (_, i) => _item(i),
                      itemCount: list.length,
                    ),
                  ]),
                )
              ]))
            ],
          ),
        ),
        length: 5,
      ),
    );
  }

  Widget _item(int i) {
    if (i == 0) {
      return Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 15, right: 15),
            padding: EdgeInsets.only(bottom: 10),
            height: 120,
            color: bg2,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Image.asset(
                        getImg('2.10_07'),
                        width: 50,
                        fit: BoxFit.fill,
                        height: 50,
                      ),
                      Text('面部精华'),
                      RichText(
                          text: TextSpan(
                              text: '销量：',
                              style: TextStyle(color: textColor),
                              children: [
                            TextSpan(
                                text: '6893',
                                style: TextStyle(color: Colors.black))
                          ]))
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Image.asset(
                        getImg('2.10_04'),
                        fit: BoxFit.fill,
                        width: 60,
                        height: 60,
                      ),
                      Text('gtx2080ti', style: TextStyle(color: c1, fontSize: 17),),
                      RichText(
                          text: TextSpan(
                              text: '销量：',
                              style: TextStyle(color: c1),
                              children: [
                                TextSpan(
                                    text: '6893',)
                              ]))
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Image.asset(
                        getImg('2.10_10'),
                        width: 50,
                        fit: BoxFit.fill,
                        height: 50,
                      ),
                      Text('面部精华'),
                      RichText(
                          text: TextSpan(
                              text: '销量：',
                              style: TextStyle(color: textColor),
                              children: [
                                TextSpan(
                                    text: '6893',
                                    style: TextStyle(color: Colors.black))
                              ]))
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: 0,
          ),
        ],
      );
    }
    if (i == 1) {
      return Offstage();
    }
    if (i == 2) {
      return Offstage();
    }
    return Container(
      decoration: BoxDecoration(
          color: bg2,
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(i == list.length - 1 ? 10 : 0),
              bottomLeft: Radius.circular(i == list.length - 1 ? 10 : 0))),
      margin: EdgeInsets.only(
        left: 15,
        right: 15,
      ),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              backgroundColor: c1,
              radius: 15,
              child: Text('4'),
            ),
            title: Text(
              'gtx1080ti败家之眼败家之眼',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            trailing: RichText(
                text: TextSpan(
                    text: '销量：',
                    children: [
                      TextSpan(
                          text: '2569', style: TextStyle(color: Colors.black))
                    ],
                    style: TextStyle(color: textColor))),
          ),
          Divider(
            height: 0,
          ),
        ],
      ),
    );
  }
}
