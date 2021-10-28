import 'package:FlutterDemo/Page/order_page/sub_order_list/sub_order_list_item_adapter/adapter.dart';
import 'package:FlutterDemo/Page/order_page/sub_order_list/sub_order_list_item_component/state.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class SubOrderListState extends MutableSource implements Cloneable<SubOrderListState> {
  RefreshController refreshController;
  String tag;
  List<SOrderListItemState> dataSource = <SOrderListItemState>[];

  @override
  SubOrderListState clone() {
    return SubOrderListState()
    ..tag = tag
    ..dataSource = dataSource
    ..refreshController = refreshController;
  }

  @override
  Object getItemData(int index) {
    // TODO: implement getItemData
    return dataSource[index];
  }

  @override
  String getItemType(int index) {
    // TODO: implement getItemType
    return SOrderListItemAdapter.listItem;
  }

  @override
  // TODO: implement itemCount
  // int get itemCount => dataSource.length;
  int get itemCount => dataSource?.length ?? 0;

  @override
  void setItemData(int index, Object data) {
    // TODO: implement setItemData
    dataSource[index] = data;
  }
}

SubOrderListState initState(Map<String, dynamic> args) {
  print('${args}');

  return SubOrderListState()
  ..tag = args['key']??''
  ..refreshController = RefreshController(initialRefresh: false)
  ..dataSource = <SOrderListItemState>[];
}
