import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<MainState> buildReducer() {
  return asReducer(
    <Object, Reducer<MainState>>{
      HomePageAction.action: _onAction,
      HomePageAction.change: _onChangePage,
      Lifecycle.initState: _init,
    },
  );
}

MainState _init(MainState state, Action action) {
  final MainState newState = state.clone();
  Map map = action.payload;
  newState.bottomNavItems = map['bottomNavItems'];
  newState.pages = map['pages'];
  return newState;
}

MainState _onAction(MainState state, Action action) {
  final MainState newState = state.clone();
  return newState;
}

MainState _onChangePage(MainState state, Action action) {
  final MainState newState = state.clone();
  int clickIndex = action.payload;
  if (clickIndex != state.currentIndex) {
    newState.pageController.jumpToPage(clickIndex);
    newState.currentIndex = clickIndex;
  }
  return newState;
}
