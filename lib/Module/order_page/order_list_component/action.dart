import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum OrderListCompAction { action }

class OrderListComponentActionCreator {
  static Action onAction() {
    return const Action(OrderListCompAction.action);
  }
}
