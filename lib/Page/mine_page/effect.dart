import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Effect<MineState> buildEffect() {
  return combineEffects(<Object, Effect<MineState>>{
    MineAction.action: _onAction,
    Lifecycle.initState: _oninit
  });
}

void _onAction(Action action, Context<MineState> ctx) {
}

void _oninit(Action action, Context<MineState> ctx) {
  print('mine effect init');
}
