import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<OrderListAdapterState> buildReducer() {
  return asReducer(
    <Object, Reducer<OrderListAdapterState>>{
      OrderListAdpaterAction.action: _onAction,
    },
  );
}

OrderListAdapterState _onAction(OrderListAdapterState state, Action action) {
  final OrderListAdapterState newState = state.clone();
  return newState;
}
