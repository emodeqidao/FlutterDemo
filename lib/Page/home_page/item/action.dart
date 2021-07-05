import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum UserItemAction { action }

class UserItemActionCreator {
  static Action onAction() {
    return const Action(UserItemAction.action);
  }
}
