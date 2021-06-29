import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'state.dart';

Widget buildView(
    OrderState state, Dispatch dispatch, ViewService viewService) {
  Widget _tabBarView() {
    return TabBarView(
      controller: state.tabController,
      children: state.itemList.map((item) {
        return Container(
          color: Colors.green,
          child: Center(
            child: Text(item,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
          ),
        );
      }).toList(),
    );
  }

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
            //数据量少的是 设置false 会自动撑满一行，
            //数据量多的时候 设置true 就可以滚动
            isScrollable: true,
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
    body: _tabBarView(),
  );


}
