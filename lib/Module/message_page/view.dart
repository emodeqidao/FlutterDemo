import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';
import 'state.dart';

Widget buildView(MessageState state, Dispatch dispatch, ViewService viewService) {

  return Scaffold(
    appBar: AppBar(
      centerTitle: true,
      title: Text('message title'),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(48),
        child: Container(
          height: 48,
          color: Colors.pink,
          child: TabBar(
            tabs: state.itemList,
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
