import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<MessageState> buildReducer() {
  return asReducer(
    <Object, Reducer<MessageState>>{
      MessageAction.action: _onAction,
      MessageAction.onInit: _onInit,
    },
  );
}

MessageState _onAction(MessageState state, Action action) {
  final MessageState newState = state.clone();
  return newState;
}

MessageState _onInit(MessageState state, Action action) {
  final MessageState newState = state.clone();
  List<String> itemList = action.payload['itemList'];
  newState.tabController = action.payload['tabController'];
  newState.itemList = itemList;
  return newState;
}

