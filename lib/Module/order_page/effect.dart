
import 'dart:math';

import 'package:FlutterDemo/Model/order_list_entity.dart';
import 'package:FlutterDemo/Module/order_page/order_list_adapter/state.dart';
import 'package:FlutterDemo/Module/order_page/order_list_component/state.dart';
import 'package:FlutterDemo/Module/order_page/page.dart';
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



void _init(Action action, Context<OrderState> ctx) {
  List<String> list = [];
  list.add('全部');
  list.add('待付款');
  list.add('待收货');
  list.add('待评价');
  list.add('已完成');
  list.add('退货/售后');

  final TickerProvider tickerProvider = ctx.stfState as StateWithTickerProvider;

  TabController tabController = TabController(length: list.length, vsync: tickerProvider);
  //监听
  tabController.addListener(() {
    print('选中了：' + tabController.index.toString());
    ctx.dispatch(OrderActionCreator.onSelectChange());
  });


  List dataSourceList = [];
  //造数据
  list.forEach((element) {
    List temp = [];
    for (int i = 0; i < 20; i++) {
       OrderListEntity entity = OrderListEntity()
         ..orderNo = i.toString() + element
         ..createDateTime = (i.toString() + ' ' + '2020-10-01');
       temp.add(OrderListComponentState(orderListEntity: entity));
    }
    dataSourceList.add(temp);
  });

  Map map = {
    'itemList': list,
    'tabController': tabController,
    'dataSourceList': dataSourceList,
  };

  ctx.dispatch(OrderActionCreator.onInit(map));
}

void _onAction(Action action, Context<OrderState> ctx) {

}
