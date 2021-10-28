import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(SubOrderListState state, Dispatch dispatch, ViewService viewService) {
  final ListAdapter adapter = viewService.buildAdapter();

  // return Container(
  //   height: 100,
  //   color: Colors.blue,
  // );
  return keepAliveClientWrapper(Container(
    child: SmartRefresher(
      controller: state.refreshController,
      enablePullDown: true,
      child: ListView.builder(
          itemBuilder: adapter.itemBuilder,
          itemCount: adapter.itemCount
      ),
    ),
  ));
}
