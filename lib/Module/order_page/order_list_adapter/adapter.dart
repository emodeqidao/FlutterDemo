import 'package:FlutterDemo/Module/order_page/order_list_component/component.dart';
import 'package:FlutterDemo/Module/order_page/state.dart';
import 'package:fish_redux/fish_redux.dart';

import 'reducer.dart';
import 'state.dart';


class OrderListAdapter extends SourceFlowAdapter<OrderState> {

  static const String listItem = 'order_list_item';

  OrderListAdapter()
      : super(
          pool: <String, Component<Object>>{
            listItem: OrderListComponent()
          },
          // reducer: buildReducer(),
          );
}
