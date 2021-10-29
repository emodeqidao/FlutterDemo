import 'package:FlutterDemo/Page/car_page/page.dart';
import 'package:FlutterDemo/Page/home_page/page.dart';
import 'package:FlutterDemo/Page/mine_page/page.dart';
import 'package:FlutterDemo/Page/order_page/page.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(MainState state, Dispatch dispatch, ViewService viewService) {

  return keepAliveClientWrapper(WillPopScope(
    child: Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: state.bottomNavItems,
        currentIndex: state.currentIndex,
        onTap: (v) {
          dispatch(HomePageActionCreator.change(v));
        },
      ),
      body: PageView.builder(
        onPageChanged: (v) {
          // print('改变到了${v}');
        },
        controller: state.pageController,
        itemBuilder: (BuildContext context, int index) {
          return state.pages[index];
        },
        physics: NeverScrollableScrollPhysics(),
      ),
    ),
  ));
}
