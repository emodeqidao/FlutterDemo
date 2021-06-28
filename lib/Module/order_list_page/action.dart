import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum OrderListAction { action }

class OrderListActionCreator {
  static Action onAction() {
    return const Action(OrderListAction.action);
  }
}
