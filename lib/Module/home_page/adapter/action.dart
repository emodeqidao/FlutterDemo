import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum UserAdapterAction { action }

class UserAdapterActionCreator {
  static Action onAction() {
    return const Action(UserAdapterAction.action);
  }
}
