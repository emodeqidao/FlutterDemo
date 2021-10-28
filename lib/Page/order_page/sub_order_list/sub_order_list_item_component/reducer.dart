import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<SOrderListItemState> buildReducer() {
  return asReducer(
    <Object, Reducer<SOrderListItemState>>{
      SOrderListItemAction.action: _onAction,
    },
  );
}

SOrderListItemState _onAction(SOrderListItemState state, Action action) {
  final SOrderListItemState newState = state.clone();
  return newState;
}

