import 'package:FlutterDemo/Module/car_page/page.dart';
import 'package:FlutterDemo/Module/home_page/page.dart';
import 'package:FlutterDemo/Module/mine_page/page.dart';
import 'package:FlutterDemo/Module/order_page/page.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

class MainState implements Cloneable<MainState> {
  List<BottomNavigationBarItem> bottomNavItems;
  List<Widget> pages;
  int currentIndex;

  @override
  MainState clone() {
    return MainState()
    ..bottomNavItems = bottomNavItems
    ..currentIndex = currentIndex
    ..pages = pages;
  }
}

MainState initState(Map<String, dynamic> args) {
  final List<BottomNavigationBarItem> bottomNavItems = [
    BottomNavigationBarItem(
      backgroundColor: Colors.blue,
      icon: Icon(Icons.home),
      label: "首页",
    ),
    BottomNavigationBarItem(
      backgroundColor: Colors.green,
      icon: Icon(Icons.message),
      label: "消息",
    ),
    BottomNavigationBarItem(
      backgroundColor: Colors.amber,
      icon: Icon(Icons.shopping_cart),
      label: "购物车",
    ),
    BottomNavigationBarItem(
      backgroundColor: Colors.red,
      icon: Icon(Icons.person),
      label: "个人中心",
    ),
  ];

  final List<Widget> pages = [
    HomePage().buildPage({"page": "home"}),
    OrderPage().buildPage({"page": "order"}),
    CarPage().buildPage({"page": "car"}),
    MinePage().buildPage({"page": "mine"}),
  ];

  MainState state = MainState();
  state.bottomNavItems = bottomNavItems;
  state.currentIndex = 0;
  state.pages = pages;
  return state;
}
