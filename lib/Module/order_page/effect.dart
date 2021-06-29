
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
  });

  Map map = {
    'itemList': list,
    'tabController': tabController
  };
  ctx.dispatch(OrderActionCreator.onInit(map));
}

void _onAction(Action action, Context<OrderState> ctx) {

}
