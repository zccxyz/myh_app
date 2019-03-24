import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myh_shop/common.dart';
import 'package:myh_shop/widget/MyAppBar.dart';
import 'package:myh_shop/widget/MyButton.dart';
import 'package:myh_shop/widget/MyInput2.dart';
import 'package:myh_shop/widget/MyItem.dart';
import 'package:myh_shop/widget/MyRadio.dart';

class AddNew extends StatefulWidget {
  @override
  _AddNewState createState() => _AddNewState();
}

class _AddNewState extends State<AddNew> {
  Map<String, dynamic> data = {
    'name': '',
    'age': '',
    'tel': '',
    'sex': '',
    'weixin': '',
    'adviser': '',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: Text('添加新客'),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          alignment: Alignment.center,
          child: MyButton(
            onPressed: data['tel'].toString().length > 0 &&
                    data['name'].toString().length > 0
                ? () {
                    add();
                  }
                : null,
            title: '添加新客',
          ),
          height: 50,
        ),
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            MyInput2(
              label: '姓$kg名',
              hintText: '请输入客户姓名(必填)',
              onChanged: (v) {
                setState(() {
                  data['name'] = v;
                });
              },
            ),
            MyInput2(
              label: '年$kg龄',
              keyboardType: TextInputType.numberWithOptions(),
              hintText: '请输入客户的年龄',
              onChanged: (v) {
                setState(() {
                  data['age'] = v;
                });
              },
            ),
            MyInput2(
              label: '手机号码',
              keyboardType: TextInputType.numberWithOptions(),
              hintText: '请输入客户的手机号码(必填)',
              onChanged: (v) {
                setState(() {
                  data['tel'] = v;
                });
              },
            ),
            MyInput2(
              label: '微信号码',
              hintText: '请输入客户的微信号码',
              onChanged: (v) {
                setState(() {
                  data['weixin'] = v;
                });
              },
            ),
            MyItem(
                child: MyRadio(
                  onChanged: (v) {
                    setState(() {
                      data['sex'] = v;
                    });
                  },
                  text: '女性',
                  text2: '男性',
                ),
                label: '性$kg别'),
            MyInput2(
              label: '顾$kg问',
              hintText: '请输入顾问姓名',
              onChanged: (v) {
                setState(() {
                  data['adviser'] = v;
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  void add() async {
    if (data['tel'].toString().length != 11) {
      tip(context, '请输入11位手机号码');
      return;
    }
    var rs = await post('AddNew', data: {
      'tel': data['tel'],
      'name': data['name'],
      'age': data['age'],
      'weixin': data['weixin'],
      'adviser': data['adviser']
    });
    if(rs!=null){
      if(rs['code']==1){
        ok(context, '添加成功');
      }else{
        tip(context, '添加失败');
      }
    }
    print(rs);
  }
}
