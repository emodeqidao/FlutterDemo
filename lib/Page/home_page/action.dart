import 'package:FlutterDemo/Model/user_model_entity.dart';
import 'package:FlutterDemo/Page/home_page/item/state.dart';
import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum homeAction { action, refresh }

class homeActionCreator {
  static Action onAction() {
    return const Action(homeAction.action);
  }

  static Action onRefresh(List<UserItemState> list) {
    return Action(homeAction.refresh, payload: list);
  }
}
