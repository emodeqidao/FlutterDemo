import 'package:FlutterDemo/Page/order_page/sub_order_list/page.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

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
  OrderState newState = OrderState();
  return newState;
}
