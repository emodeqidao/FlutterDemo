import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(CarState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      centerTitle: true,
      title: Text('car title'),
    ),
    body: Container(
      color: Colors.red,
      child: Text('car'),
    ),
  );
}
