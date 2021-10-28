import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<OrderState> buildReducer() {
  return asReducer(
    <Object, Reducer<OrderState>>{
      OrderAction.action: _onAction,
      OrderAction.onInit: _onInit,
      OrderAction.selectChange: _onSelectChange,
    },
  );
}

OrderState _onAction(OrderState state, Action action) {
  final OrderState newState = state.clone();
  return newState;
}

OrderState _onInit(OrderState state, Action action) {
  final OrderState newState = state.clone();
  List<String> itemList = action.payload['itemList'];
  newState.tabController = action.payload['tabController'];
  newState.itemList = itemList;
  newState.subOrderPageList = action.payload['widgetList'];
  return newState;
}

OrderState _onSelectChange(OrderState state, Action action) {
  final OrderState newState = state.clone();
  int selectIndex = action.payload;

  return newState;
}

