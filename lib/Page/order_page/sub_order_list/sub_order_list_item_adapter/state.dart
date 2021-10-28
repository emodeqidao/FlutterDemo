import 'package:fish_redux/fish_redux.dart';

class SOrderListItemAdapterState extends MutableSource implements Cloneable<SOrderListItemAdapterState> {
  @override
  SOrderListItemAdapterState clone() {
    return SOrderListItemAdapterState();
  }

  @override
  Object getItemData(int index) {
    // TODO: implement getItemData
    throw UnimplementedError();
  }

  @override
  String getItemType(int index) {
    // TODO: implement getItemType
    throw UnimplementedError();
  }

  @override
  // TODO: implement itemCount
  int get itemCount => throw UnimplementedError();

  @override
  void setItemData(int index, Object data) {
    // TODO: implement setItemData
  }
}

SOrderListItemAdapterState initState(Map<String, dynamic> args) {
  return SOrderListItemAdapterState();
}
