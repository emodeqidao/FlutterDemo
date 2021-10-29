import 'package:FlutterDemo/Page/car_page/page.dart';
import 'package:FlutterDemo/Page/home_page/page.dart';
import 'package:FlutterDemo/Page/mine_page/page.dart';
import 'package:FlutterDemo/Page/order_page/page.dart';
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
  print('main init state');
  final List<BottomNavigationBarItem> bottomNavItems = [
    BottomNavigationBarItem(
      backgroundColor: Colors.blue,
      icon: Icon(Icons.home),
      label: "首页",
    ),
    BottomNavigationBarItem(
      backgroundColor: Colors.green,
      icon: Icon(Icons.message),
      label: "订单",
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

  Widget homeWidget = HomePage().buildPage({"page": "home"});
  Widget OrderWidget = OrderPage().buildPage({"page": "order"});
  Widget carWidget = CarPage().buildPage({"page": "car"});
  Widget mineWidget = MinePage().buildPage({"page": "mine"});

  final List<Widget> pages = [
    keepAliveClientWrapper(homeWidget),
    keepAliveClientWrapper(OrderWidget),
    keepAliveClientWrapper(carWidget),
    keepAliveClientWrapper(mineWidget)
  ];

  MainState state = MainState()
  ..currentIndex = 0
  ..bottomNavItems = bottomNavItems
  ..pages = pages;

  return state;
}
