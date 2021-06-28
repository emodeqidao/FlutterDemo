import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class OrderListPage extends Page<OrderListState, Map<String, dynamic>> {
  OrderListPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<OrderListState>(
                adapter: null,
                slots: <String, Dependent<OrderListState>>{
                }),
            middleware: <Middleware<OrderListState>>[
            ],);

}
