import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(OrderListComponentState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    height: 80,
    padding: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Flexible(
          flex: 2,
          child: Text(state.orderListEntity.orderNo),
        ),
        Flexible(
          flex: 1,
          child: Text(state.orderListEntity.createDateTime),
        ),
      ],
    ),
  );
}
