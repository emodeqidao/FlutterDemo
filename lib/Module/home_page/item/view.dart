import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(UserItemState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    height: 80,
    padding: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Flexible(
          flex: 2,
          child: Text(state.user.name),
        ),
        Flexible(
          flex: 1,
          child: Text(state.user.age.toString()),
        ),
        Flexible(
          flex: 1,
          child: Text(state.user.sex == 1 ? '男' : '女'),
        ),
      ],
    ),
  );
}
