import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderState implements Cloneable<OrderState> {
  TabController tabController;
  List<String> itemList;

  @override
  OrderState clone() {
    return OrderState()
    ..tabController = tabController
    ..itemList = itemList;
  }
}

OrderState initState(Map<String, dynamic> args) {
  OrderState newState = OrderState();

  return newState;
}
