import 'package:fish_redux/fish_redux.dart';

class OrderListState implements Cloneable<OrderListState> {

  @override
  OrderListState clone() {
    return OrderListState();
  }
}

OrderListState initState(Map<String, dynamic> args) {
  return OrderListState();
}
