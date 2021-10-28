import 'package:FlutterDemo/Page/order_page/sub_order_list/state.dart';
import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<SOrderListItemAdapterState> buildReducer() {
  return asReducer(
    <Object, Reducer<SOrderListItemAdapterState>>{
      SOrderListItemAction.action: _onAction,
    },
  );
}

SOrderListItemAdapterState _onAction(SOrderListItemAdapterState state, Action action) {
  final SOrderListItemAdapterState newState = state.clone();
  return newState;
}
