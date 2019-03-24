import 'package:flutter/material.dart';
import 'package:myh_shop/common.dart';
import 'package:myh_shop/widget/MyButton2.dart';

class PlanItem extends StatefulWidget {
  @override
  _PlanState createState() => _PlanState();
}

class _PlanState extends State<PlanItem> with SingleTickerProviderStateMixin {
  final double height = 40;
  bool zt = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: ListTile(
            contentPadding: EdgeInsets.only(left: 0, right: 10),
            leading: Row(
              children: <Widget>[
                AnimatedCrossFade(
                    firstChild: MyButton2(
                      onPress: () {
                        setState(() {
                          zt = !zt;
                        });
                      },
                      icon: Icons.chevron_right,
                      color: disColor,
                    ),
                    secondChild: MyButton2(
                      onPress: () {
                        setState(() {
                          zt = !zt;
                        });
                      },
                      icon: Icons.keyboard_arrow_down,
                      color: myColor(105, 105, 106),
                    ),
                    crossFadeState: zt
                        ? CrossFadeState.showSecond
                        : CrossFadeState.showFirst,
                    duration: Duration(milliseconds: 200)),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: Text(
                    '美容仪器治疗美容仪器治疗',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  width: 120,
                ),
                priceWidget('2500'),
              ],
            ),
            trailing: Container(
              width: getRange(context) / 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  MyButton2(
                    icon: Icons.remove,
                    color: c1,
                    onPress: () {},
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    child: Text(
                      '0',
                      style: TextStyle(color: textColor, fontSize: 18),
                    ),
                  ),
                  MyButton2(
                    icon: Icons.add,
                    onPress: () {
                      //showCar(c);
                    },
                  ),
                  //IconButton(icon: Icon(Icons.add), onPressed: (){}),
                ],
              ),
            ),
          ),
        ),
        AnimatedSize(
          duration: Duration(milliseconds: 200),
          vsync: this,
          child: zt
              ? Table(
                  children: <TableRow>[
                    TableRow(children: [
                      TableCell(
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: height,
                              alignment: Alignment.center,
                              color: tableBg,
                              child: Text('类别'),
                            ),
                            Divider(
                              height: 0,
                              color: textColor,
                            )
                          ],
                        ),
                      ),
                      TableCell(
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: height,
                              alignment: Alignment.center,
                              color: tableBg,
                              child: Text('名称'),
                            ),
                            Divider(
                              height: 0,
                              color: textColor,
                            )
                          ],
                        ),
                      ),
                      TableCell(
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: height,
                              alignment: Alignment.center,
                              color: tableBg,
                              child: Text('售价'),
                            ),
                            Divider(
                              height: 0,
                              color: textColor,
                            )
                          ],
                        ),
                      ),
                      TableCell(
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: height,
                              alignment: Alignment.center,
                              color: tableBg,
                              child: Text('次数'),
                            ),
                            Divider(
                              height: 0,
                              color: textColor,
                            )
                          ],
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      TableCell(
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: height,
                              alignment: Alignment.center,
                              color: tableBg,
                              child: Text('项目'),
                            ),
                            Divider(
                              height: 0,
                              color: textColor,
                            )
                          ],
                        ),
                      ),
                      TableCell(
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: height,
                              alignment: Alignment.center,
                              color: tableBg,
                              child: Text(
                                '面部护理面部护理',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Divider(
                              height: 0,
                              color: textColor,
                            )
                          ],
                        ),
                      ),
                      TableCell(
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: height,
                              alignment: Alignment.center,
                              color: tableBg,
                              child: Text(
                                '650000.00',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                            ),
                            Divider(
                              height: 0,
                              color: textColor,
                            )
                          ],
                        ),
                      ),
                      TableCell(
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: height,
                              alignment: Alignment.center,
                              color: tableBg,
                              child: Text('10'),
                            ),
                            Divider(
                              height: 0,
                              color: textColor,
                            )
                          ],
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      TableCell(
                        child: Container(
                          height: height,
                          alignment: Alignment.center,
                          color: tableBg,
                          child: Text('项目'),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          height: height,
                          alignment: Alignment.center,
                          color: tableBg,
                          child: Text(
                            '面部护理面部护理',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          height: height,
                          alignment: Alignment.center,
                          color: tableBg,
                          child: Text(
                            '650000.00',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          height: height,
                          alignment: Alignment.center,
                          color: tableBg,
                          child: Text('10'),
                        ),
                      ),
                    ]),
                  ],
                )
              : Offstage(),
        ),
        Divider(
          height: 0,
        )
      ],
    );
  }
}
