import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'action.dart';
import 'state.dart';

Reducer<HomeState> buildReducer() {
  return asReducer(
    <Object, Reducer<HomeState>>{
      homeAction.action: _onAction,
      homeAction.refresh: _onRefresh,
    },
  );
}

HomeState _onAction(HomeState state, Action action) {
  final HomeState newState = state.clone();
  return newState;
}

HomeState _onRefresh(HomeState state, Action action) {
  final HomeState newState = state.clone();
  newState.userItemList = action.payload;
  return newState;
}
