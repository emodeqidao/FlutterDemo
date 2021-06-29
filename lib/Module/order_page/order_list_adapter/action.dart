import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum OrderListAdpaterAction { action }

class OrderListAdapterActionCreator {
  static Action onAction() {
    return const Action(OrderListAdpaterAction.action);
  }
}
