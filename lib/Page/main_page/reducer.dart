import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<MainState> buildReducer() {
  return asReducer(
    <Object, Reducer<MainState>>{
      HomePageAction.action: _onAction,
      HomePageAction.change: _onChangePage,
    },
  );
}

MainState _onAction(MainState state, Action action) {
  final MainState newState = state.clone();
  return newState;
}

MainState _onChangePage(MainState state, Action action) {
  final MainState newState = state.clone();
  int clickIndex = action.payload;
  if (clickIndex != state.currentIndex) {
    newState.currentIndex = clickIndex;
  }
  return newState;
}
