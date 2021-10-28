import 'package:FlutterDemo/Page/order_page/sub_order_list/sub_order_list_item_adapter/adapter.dart';
import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class SubOrderListPage extends Page<SubOrderListState, Map<String, dynamic>> {
  SubOrderListPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<SubOrderListState>(
                adapter: NoneConn<SubOrderListState>() + SOrderListItemAdapter(),
                slots: <String, Dependent<SubOrderListState>>{}
                ),
            middleware: <Middleware<SubOrderListState>>[
            ],);

}
