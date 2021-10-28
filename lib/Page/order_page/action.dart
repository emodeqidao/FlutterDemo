import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum OrderAction { action, onInit, selectChange }

class OrderActionCreator {
  static Action onAction() {
    return const Action(OrderAction.action);
  }
  
  static Action onInit(Map map) {
    return Action(OrderAction.onInit, payload: map);
  }

  static Action onSelectChange(int index) {
    return Action(OrderAction.selectChange, payload: index);
  }
}
