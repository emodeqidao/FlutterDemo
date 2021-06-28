import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessageState implements Cloneable<MessageState> {
  TabController tabController;
  List<Widget> itemList;

  @override
  MessageState clone() {
    return MessageState()
    ..tabController = tabController
    ..itemList = itemList;
  }
}

MessageState initState(Map<String, dynamic> args) {
  MessageState newState = MessageState();

  return newState;
}
