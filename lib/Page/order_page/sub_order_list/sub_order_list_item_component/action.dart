import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum SOrderListItemAction { action, showData }

class SOrderListItemActionCreator {
  static Action onAction() {
    return const Action(SOrderListItemAction.action);
  }


}
