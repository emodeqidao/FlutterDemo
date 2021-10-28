import 'package:FlutterDemo/Page/order_page/sub_order_list/state.dart';
import 'package:FlutterDemo/Page/order_page/sub_order_list/sub_order_list_item_component/component.dart';
import 'package:fish_redux/fish_redux.dart';

import 'reducer.dart';
import 'state.dart';

class SOrderListItemAdapter extends SourceFlowAdapter<SubOrderListState> {

  static const String listItem = 'sub_order_list_item';


  SOrderListItemAdapter()
      : super(
          pool: <String, Component<Object>>{
            listItem: SOrderListItemComponent()
          },
          // reducer: buildReducer(),
          );
}
