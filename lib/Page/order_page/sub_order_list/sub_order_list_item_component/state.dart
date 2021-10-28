import 'package:FlutterDemo/Model/order_list_entity.dart';
import 'package:fish_redux/fish_redux.dart';

class SOrderListItemState implements Cloneable<SOrderListItemState> {
  OrderListEntity orderListEntity;

  SOrderListItemState({this.orderListEntity});

  @override
  SOrderListItemState clone() {
    return SOrderListItemState()
    ..orderListEntity = orderListEntity;
  }
}

SOrderListItemState initState(Map<String, dynamic> args) {
  return SOrderListItemState();
}
