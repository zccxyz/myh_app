import 'package:flutter/material.dart';
import 'package:myh_shop/common.dart';
import 'package:myh_shop/widget/MyButton2.dart';

class CardItem extends StatefulWidget {
  @override
  _CardState createState() => _CardState();
}

class _CardState extends State<CardItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  '新促织卡',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: RichText(
                        text: TextSpan(
                            text: '余额：',
                            children: [
                              TextSpan(
                                  text: '¥',
                                  style: TextStyle(color: c1, fontSize: 13)),
                              TextSpan(
                                  text: '2500',
                                  style: TextStyle(color: c1, fontSize: 16)),
                            ],
                            style: TextStyle(
                              color: textColor,
                            ))),
                  ),
                  Expanded(
                    child: RichText(
                        text: TextSpan(
                            text: '卡类：',
                            children: [
                              TextSpan(
                                  text: '全场折扣卡',
                                  style: TextStyle(color: Colors.black))
                            ],
                            style: TextStyle(
                              color: textColor,
                            ))),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
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
                            onPress: () {},
                          ),
                          //IconButton(icon: Icon(Icons.add), onPressed: (){}),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Divider(),
      ],
    );
  }
}
