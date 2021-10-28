import 'package:FlutterDemo/Page/order_page/sub_order_list/sub_order_list_item_component/state.dart';
import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<SubOrderListState> buildReducer() {
  return asReducer(
    <Object, Reducer<SubOrderListState>>{
      SubOrderListAction.action: _onAction,
      SubOrderListAction.showData: _onShowData
    },
  );
}

SubOrderListState _onAction(SubOrderListState state, Action action) {
  final SubOrderListState newState = state.clone();
  return newState;
}

SubOrderListState _onShowData(SubOrderListState state, Action action) {
  final SubOrderListState newState = state.clone();
  List<SOrderListItemState> list = action.payload;
  newState.dataSource = list;
  return newState;
}