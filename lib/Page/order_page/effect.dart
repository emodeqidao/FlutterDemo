
import 'dart:io';
import 'dart:math';

import 'package:FlutterDemo/Model/order_list_entity.dart';
import 'package:FlutterDemo/Page/order_page/page.dart';
import 'package:FlutterDemo/Page/order_page/sub_order_list/state.dart';
import 'package:FlutterDemo/myRoutes.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'action.dart';
import 'state.dart';

Effect<OrderState> buildEffect() {
  return combineEffects(<Object, Effect<OrderState>>{
    OrderAction.action: _onAction,
    Lifecycle.initState: _init,
  });
}



Future<void> _init(Action action, Context<OrderState> ctx) {
  List<String> list = [];
  list.add('全部');
  list.add('待付款');
  list.add('待收货');
  list.add('待评价');
  list.add('已完成');
  list.add('退货/售后');

  final TickerProvider tickerProvider = ctx.stfState as StateWithTickerProvider;

  TabController tabController = TabController(length: list.length, vsync: tickerProvider, initialIndex: 0);
  //监听
  tabController.addListener(() {
    print('pre' + tabController.previousIndex.toString());
    print('选中了：' + tabController.index.toString());
      // ctx.dispatch(OrderActionCreator.onSelectChange(tabController.index));
    // }
  });

  List<Widget> widgetList = <Widget>[];

  list.forEach((element) {
    String valueStr = 'value ${element}';
    print('${valueStr}');
    Widget contentWidget = myRoutes.routes.buildPage('subOrderListPage', {'key': valueStr});
    widgetList.add(contentWidget);
  });

  Map map = {
    'itemList': list,
    'tabController': tabController,
    'widgetList': widgetList,
  };

  ctx.dispatch(OrderActionCreator.onInit(map));
}

void _onAction(Action action, Context<OrderState> ctx) {

}
