import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Effect<OrderListState> buildEffect() {
  return combineEffects(<Object, Effect<OrderListState>>{
    OrderListAction.action: _onAction,
  });
}

void _onAction(Action action, Context<OrderListState> ctx) {
}
