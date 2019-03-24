import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myh_shop/app/bottomBar.dart';
import 'package:myh_shop/app/home.dart';
import 'package:myh_shop/app/login.dart';
import 'package:myh_shop/app/main/arrears.dart';
import 'package:myh_shop/app/main/goods/add_cp.dart';
import 'package:myh_shop/app/main/goods/bespeak.dart';
import 'package:myh_shop/app/main/goods/box_manage.dart';
import 'package:myh_shop/app/main/goods/card_manage.dart';
import 'package:myh_shop/app/main/goods/consumables.dart';
import 'package:myh_shop/app/main/goods/cp_manage.dart';
import 'package:myh_shop/app/main/goods/item_manage.dart';
import 'package:myh_shop/app/main/goods/plan_manage.dart';
import 'package:myh_shop/app/main/goods/rank.dart';
import 'package:myh_shop/app/main/goods/recycle_bin.dart';
import 'package:myh_shop/app/main/member_manage/coupon.dart';
import 'package:myh_shop/app/main/my/analysis.dart';
import 'package:myh_shop/app/main/my/clerk_manage.dart';
import 'package:myh_shop/app/main/my/edit_psw.dart';
import 'package:myh_shop/app/main/my/jur_list.dart';
import 'package:myh_shop/app/main/my/load_rate.dart';
import 'package:myh_shop/app/main/my/order.dart';
import 'package:myh_shop/app/main/my/printer.dart';
import 'package:myh_shop/app/main/my/setting.dart';
import 'package:myh_shop/app/main/consumption.dart';
import 'package:myh_shop/app/main/dily_water.dart';
import 'package:myh_shop/app/main/member_manage/add_member.dart';
import 'package:myh_shop/app/main/member_manage/add_new.dart';
import 'package:myh_shop/app/main/member_manage/manage.dart';
import 'package:myh_shop/app/main/member_manage/new_manage.dart';
import 'package:myh_shop/app/main/my/staff_manage.dart';
import 'package:myh_shop/app/main/my/wages.dart';
import 'package:myh_shop/app/main/performance_check/check_detail.dart';
import 'package:myh_shop/app/main/performance_check/check_list.dart';
import 'package:myh_shop/app/main/performance_check/month.dart';
import 'package:myh_shop/app/main/popularity/index.dart';
import 'package:myh_shop/app/main/warehouse/early_warning.dart';
import 'package:myh_shop/app/main/warehouse/ware_list.dart';
import 'package:myh_shop/common.dart';

var now = 0;  //0未登录

void main() async {
  var rs = await getData('loginData');
  //print(rs);
  if (rs != null){
    //登录
    now = 1;
    userModel.loginData = formData(rs);
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '美约会',
      routes: {
        'login': (_) => Login(),
        'home': (_) => Home(),
        'bottom_bar': (_) => BottomBar(),
        'manage': (_) => Manage(),
        'add_menber': (_) => AddMember(),
        'add_new': (_) => AddNew(),
        'new_manage': (_) => NewManage(),
        'consumption': (_) => Consumption(),
        'arrears': (_) => Arrears(),
        'dily_water': (_) => DilyWater(),
        'check_list': (_) => CheckList(),
        'ware_list': (_) => WareList(),
        'early_warning': (_) => EarlyWarning(),
        'popularity_index': (_) => PopularityIndex(),
        'check_detail': (_) => CheckDetail(),
        'month': (_) => Month(),
        'setting': (_) => Setting(),
        'edit_psw': (_) => EditPsw(),
        'jur_list': (_) => JurList(),
        'cp_manage': (_) => CpManage(),
        'add_cp': (_) => AddCp(),
        'box_manage': (_) => BoxManage(),
        'item_manage': (_) => ItemManage(),
        'plan_manage': (_) => PlanManage(),
        'card_manage': (_) => CardManage(),
        'coupon': (_) => Coupon(),
        'consumables': (_) => Consumables(),
        'recycle_bin': (_) => RecycleBin(),
        'bespeak': (_) => Bespeak(),
        'rank': (_) => Rank(),
        'clerk_manage': (_) => ClerkManage(),
        'printer': (_) => Printer(),
        'load_rate': (_) => LoadRate(),
        'order': (_) => Order(),
        'wages': (_) => Wages(),
        'analysis': (_) => Analysis(),
        'staff_manage': (_) => StaffManage(),
      },
      theme: ThemeData(
          canvasColor: bg,
          cursorColor: c1,
          splashColor: Colors.transparent,
          primaryColor: Colors.white,
          hintColor: hintColor,
          primaryTextTheme:
              TextTheme(title: TextStyle(color: Colors.black, fontSize: 20.0))),
      home: now==0?Login():BottomBar(),
    );
  }
}
