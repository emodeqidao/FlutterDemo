import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'state.dart';

Widget buildView(
    MessageState state, Dispatch dispatch, ViewService viewService) {

  return Scaffold(
    appBar: AppBar(
      centerTitle: true,
      title: Text('message title'),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(48),
        child: Container(
          height: 48,
          color: Colors.white,
          child: TabBar(
            labelColor: Colors.blue, //选中的颜色
            labelStyle: TextStyle(color: Colors.blue, fontSize: 14),
            unselectedLabelColor: Colors.black54, //未选中的颜色
            unselectedLabelStyle:
                TextStyle(color: Colors.black54, fontSize: 14),
            isScrollable: false,
            //自定义indicator样式
            indicator: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.all(Radius.circular(15))),
            tabs: state.itemList.map((e) {
              return Tab(text: e);
            }).toList(),
            controller: state.tabController,
          ),
        ),
      ),
    ),
    body: Container(
      color: Colors.red,
      child: Text('message'),
    ),
  );
}
