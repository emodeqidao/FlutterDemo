import 'package:FlutterDemo/Page/order_page/sub_order_list/page.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:FlutterDemo/myRoutes.dart';

class OrderState implements Cloneable<OrderState> {
  TabController tabController;
  List<String> itemList;
  List<Widget> subOrderPageList = <Widget>[];

  @override
  OrderState clone() {
    return OrderState()
    ..tabController = tabController
    ..itemList = itemList
    ..subOrderPageList = subOrderPageList;
  }
}

OrderState initState(Map<String, dynamic> args) {
  print('order init state');

  List<String> list = [];
  list.add('全部');
  list.add('待付款');
  list.add('待收货');
  list.add('待评价');
  list.add('已完成');
  list.add('退货/售后');

  List<Widget> widgetList = <Widget>[];

  list.forEach((element) {
    String valueStr = 'value ${element}';
    print('${valueStr}');
    Widget contentWidget = myRoutes.routes.buildPage('subOrderListPage', {'key': valueStr});
    widgetList.add(contentWidget);
  });

  OrderState newState = OrderState()
  ..itemList = list
  ..subOrderPageList = widgetList;
  return newState;
}
