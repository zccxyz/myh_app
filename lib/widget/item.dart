import 'package:flutter/material.dart';
import 'package:myh_shop/common.dart';
import 'package:myh_shop/widget/MyButton2.dart';

class Item extends StatefulWidget {
  final Map data;
  final ValueChanged<Map> onChanged;

  const Item(this.data, {Key key, this.onChanged}) : super(key: key);

  @override
  _ItemState createState() => _ItemState(data);
}

class _ItemState extends State<Item> {
  Map d;

  _ItemState(this.d);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 10),
          height: 80,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    flex: 5,
                    child: Row(
                      children: <Widget>[
                        Container(
                            height: 20,
                            alignment: Alignment.center,
                            padding: EdgeInsets.only(left: 10, right: 10),
                            decoration: BoxDecoration(
                                color: c3,
                                borderRadius: BorderRadius.circular(10)),
                            child: Text(
                              '${d['category']}',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            )),
                        Container(
                          width: 120,
                          margin: EdgeInsets.only(left: 10, right: 10),
                          child: Text(
                            '${d['goods_name']}',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Text(
                          d['free']==1?'可赠送':'不可赠送',
                          style: TextStyle(color: textColor, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          MyButton2(
                            icon: Icons.remove,
                            color: d['sum']>0?c1:disColor,
                            onPress: () {
                              if(d['sum']>0){
                                setState(() {
                                  d['sum']--;
                                });
                                widget.onChanged(d);
                              }
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5, right: 5),
                            child: Text(
                              '${d['sum']}',
                              style: TextStyle(color: textColor, fontSize: 18),
                            ),
                          ),
                          MyButton2(
                            icon: Icons.add,
                            onPress: () {
                              setState(() {
                                d['sum']++;
                              });
                              widget.onChanged(d);
                            },
                          ),
                          //IconButton(icon: Icon(Icons.add), onPressed: (){}),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  children: <Widget>[
                    priceWidget('${d['price']}'),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Text(
                        '库存：${d['stock']}',
                        style: TextStyle(fontSize: 14, color: textColor),
                      ),
                    ),
                    Text('已预售：${d['beforehand_num']}',
                        style: TextStyle(fontSize: 14, color: textColor)),
                  ],
                ),
              )
            ],
          ),
        ),
        Divider()
      ],
    );
  }
}
