import 'package:FlutterDemo/Module/order_page/order_list_adapter/adapter.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderState extends MutableSource implements Cloneable<OrderState> {
  TabController tabController;
  List<String> itemList;
  List currentListData;
  List allDataSourceList;

  @override
  OrderState clone() {
    return OrderState()
    ..tabController = tabController
    ..itemList = itemList
    ..currentListData = currentListData
    ..allDataSourceList = allDataSourceList;
  }

  @override
  Object getItemData(int index) {
    // TODO: implement getItemData
    return currentListData[index];
  }

  @override
  String getItemType(int index) {
    // TODO: implement getItemType
    return OrderListAdapter.listItem;
  }

  @override
  // TODO: implement itemCount
  int get itemCount => currentListData?.length ?? 0;

  @override
  void setItemData(int index, Object data) {
    currentListData[index] = data;
  }
}

OrderState initState(Map<String, dynamic> args) {
  OrderState newState = OrderState();

  return newState;
}
