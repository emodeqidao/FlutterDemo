import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<OrderListState> buildReducer() {
  return asReducer(
    <Object, Reducer<OrderListState>>{
      OrderListAction.action: _onAction,
    },
  );
}

OrderListState _onAction(OrderListState state, Action action) {
  final OrderListState newState = state.clone();
  return newState;
}
