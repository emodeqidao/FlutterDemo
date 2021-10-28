import 'package:FlutterDemo/Model/order_list_entity.dart';
import 'package:FlutterDemo/Page/order_page/sub_order_list/sub_order_list_item_component/state.dart';
import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Effect<SubOrderListState> buildEffect() {
  return combineEffects(<Object, Effect<SubOrderListState>>{
    SubOrderListAction.action: _onAction,
    Lifecycle.initState: _onInit,
  });
}

void _onAction(Action action, Context<SubOrderListState> ctx) {
}

void _onInit(Action action, Context<SubOrderListState> ctx) {
  List<SOrderListItemState> list = <SOrderListItemState>[];
   for (int i = 0; i < 20; i++) {
     OrderListEntity entity = OrderListEntity()
     ..orderNo = ctx.state.tag
     ..createDateTime = '${i} + time';
     list.add(SOrderListItemState(orderListEntity: entity));
   }

   ctx.dispatch(SubOrderListActionCreator.onShowData(list));
}
