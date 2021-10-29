import 'package:FlutterDemo/Model/user_model_entity.dart';
import 'package:FlutterDemo/Page/home_page/item/state.dart';
import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'action.dart';
import 'state.dart';

Effect<HomeState> buildEffect() {
  return combineEffects(<Object, Effect<HomeState>>{
    Lifecycle.initState: _init,
    homeAction.action: _onAction,
  });
}

void _init(Action action, Context<HomeState> ctx) {
  print('home effect init');

  List<UserModelEntity> list = [];
  for (int i = 0; i < 20; i++) {
     UserModelEntity entity = UserModelEntity();
     entity.name = 'name' + i.toString();
     entity.age = 20;
     entity.sex = 1;

     list.add(entity);
  }

  List<UserItemState> items = List.generate(list.length, (index) {
    return UserItemState(user: list[index]);
  });

  ctx.dispatch(homeActionCreator.onRefresh(items));
}

void _onAction(Action action, Context<HomeState> ctx) {
}
