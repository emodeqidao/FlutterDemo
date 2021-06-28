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
  List<Widget> list = [];
  list.add(Text('语文'));
  list.add(Text('数学'));
  list.add(Text('英语'));
  list.add(Text('体育'));
  list.add(Text('音乐'));

  final TickerProvider tickerProvider = ctx.stfState as StateWithTickerProvider;

  TabController tabController = TabController(length: list.length, vsync: tickerProvider);
  Map map = {
    'itemList': list,
    'tabController': tabController
  };
  ctx.dispatch(MessageActionCreator.onInit(map));
}

void _onAction(Action action, Context<MessageState> ctx) {

}
