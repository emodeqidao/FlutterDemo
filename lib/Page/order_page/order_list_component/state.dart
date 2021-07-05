import 'package:FlutterDemo/Model/order_list_entity.dart';
import 'package:fish_redux/fish_redux.dart';

class OrderListComponentState implements Cloneable<OrderListComponentState> {
  OrderListEntity orderListEntity;

  OrderListComponentState({this.orderListEntity});

  @override
  OrderListComponentState clone() {
    return OrderListComponentState()
    ..orderListEntity = orderListEntity;
  }
}

OrderListComponentState initState(Map<String, dynamic> args) {
  return OrderListComponentState();
}
