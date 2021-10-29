import 'package:FlutterDemo/Page/car_page/page.dart';
import 'package:FlutterDemo/Page/home_page/page.dart';
import 'package:FlutterDemo/Page/mine_page/page.dart';
import 'package:FlutterDemo/Page/order_page/page.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;

import 'action.dart';
import 'state.dart';

Effect<MainState> buildEffect() {
  return combineEffects(<Object, Effect<MainState>>{
    HomePageAction.action: _onAction,
    Lifecycle.initState: _oninit
  });
}

void _onAction(Action action, Context<MainState> ctx) {
}

void _oninit(Action action, Context<MainState> ctx) {
  print('main effect init');

   // ctx.dispatch(HomePageActionCreator.init({'pages': pages, 'bottomNavItems': bottomNavItems}));
}
