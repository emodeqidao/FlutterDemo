import 'package:FlutterDemo/Module/message_page/page.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'action.dart';
import 'state.dart';

Effect<MessageState> buildEffect() {
  return combineEffects(<Object, Effect<MessageState>>{
    MessageAction.action: _onAction,
    Lifecycle.initState: _init,
  });
}

void _init(Action action, Context<MessageState> ctx) {
  List<String> list = [];
  list.add('语文');
  list.add('数学');
  list.add('英语');
  list.add('体育');
  list.add('音乐');

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
  ctx.dispatch(MessageActionCreator.onInit(map));
}

void _onAction(Action action, Context<MessageState> ctx) {

}
