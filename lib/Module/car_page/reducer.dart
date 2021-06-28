import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<CarState> buildReducer() {
  return asReducer(
    <Object, Reducer<CarState>>{
      CarAction.action: _onAction,
    },
  );
}

CarState _onAction(CarState state, Action action) {
  final CarState newState = state.clone();
  return newState;
}
