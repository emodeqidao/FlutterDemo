import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<OrderListComponentState> buildReducer() {
  return asReducer(
    <Object, Reducer<OrderListComponentState>>{
      OrderListCompAction.action: _onAction,
    },
  );
}

OrderListComponentState _onAction(OrderListComponentState state, Action action) {
  final OrderListComponentState newState = state.clone();
  return newState;
}
