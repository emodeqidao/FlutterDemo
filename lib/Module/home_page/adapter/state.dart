import 'package:fish_redux/fish_redux.dart';

class UserAdapterState extends MutableSource implements Cloneable<UserAdapterState> {
  @override
  UserAdapterState clone() {
    return UserAdapterState();
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

UserAdapterState initState(Map<String, dynamic> args) {
  return UserAdapterState();
}
