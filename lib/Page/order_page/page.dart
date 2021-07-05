import 'package:FlutterDemo/Page/order_page/order_list_adapter/adapter.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart' hide Page;

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class OrderPage extends Page<OrderState, Map<String, dynamic>> {

  @override
  StateWithTickerProvider createState() =>StateWithTickerProvider();

  OrderPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<OrderState>(
                adapter: NoneConn<OrderState>() + OrderListAdapter(),
                slots: <String, Dependent<OrderState>>{
                }),
            middleware: <Middleware<OrderState>>[
            ],);

}

class StateWithTickerProvider extends ComponentState<OrderState> with TickerProviderStateMixin {

}