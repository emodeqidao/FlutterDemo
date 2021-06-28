import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum HomePageAction { action, change }

class HomePageActionCreator {
  static Action onAction() {
    return const Action(HomePageAction.action);
  }

  static Action change(int index) {
    return Action(HomePageAction.change, payload: index);
  }
}
