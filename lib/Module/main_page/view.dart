import 'package:FlutterDemo/Module/main_page/page.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(MainState state, Dispatch dispatch, ViewService viewService) {
  return WillPopScope(
    child: Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: state.bottomNavItems,
        currentIndex: state.currentIndex,
        onTap: (v) {
          print(v);
          dispatch(HomePageActionCreator.change(v));
        },
      ),
      body: state.pages[state.currentIndex],

    ),
  );
}
