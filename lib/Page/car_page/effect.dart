import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Effect<CarState> buildEffect() {
  return combineEffects(<Object, Effect<CarState>>{
    CarAction.action: _onAction,
  });
}

void _onAction(Action action, Context<CarState> ctx) {
}
