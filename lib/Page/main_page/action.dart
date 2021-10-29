import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum HomePageAction { action, change, init }

class HomePageActionCreator {
  static Action onAction() {
    return const Action(HomePageAction.action);
  }

  static Action change(int index) {
    return Action(HomePageAction.change, payload: index);
  }

  static Action init(Map map) {
    return Action(HomePageAction.init, payload: map);
  }
}
