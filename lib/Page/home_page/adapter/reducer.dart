import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<UserAdapterState> buildReducer() {
  return asReducer(
    <Object, Reducer<UserAdapterState>>{
      UserAdapterAction.action: _onAction,
    },
  );
}

UserAdapterState _onAction(UserAdapterState state, Action action) {
  final UserAdapterState newState = state.clone();
  return newState;
}
