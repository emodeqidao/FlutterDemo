import 'package:FlutterDemo/Page/order_page/sub_order_list/sub_order_list_item_component/state.dart';
import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum SubOrderListAction { action, showData }

class SubOrderListActionCreator {
  static Action onAction() {
    return const Action(SubOrderListAction.action);
  }

  static Action onShowData(List<SOrderListItemState> list) {
    return Action(SubOrderListAction.showData, payload: list);
  }
}
