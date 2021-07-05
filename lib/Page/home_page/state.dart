import 'package:FlutterDemo/Model/user_model_entity.dart';
import 'package:FlutterDemo/Page/home_page/adapter/adapter.dart';
import 'package:FlutterDemo/Page/home_page/item/state.dart';
import 'package:fish_redux/fish_redux.dart';

class HomeState extends MutableSource implements Cloneable<HomeState> {
  List<UserItemState> userItemList;

  @override
  HomeState clone() {
    return HomeState()
    ..userItemList = userItemList;
  }

  @override
  Object getItemData(int index) {
    // TODO: implement getItemData
    return userItemList[index];
  }

  @override
  String getItemType(int index) {
    // TODO: implement getItemType
    return UserAdapterAdapter.userType;
  }

  @override
  // TODO: implement itemCount
  int get itemCount => userItemList?.length ?? 0;

  @override
  void setItemData(int index, Object data) {
    userItemList[index] = data;
  }
}

HomeState initState(Map<String, dynamic> args) {
  return HomeState();
}
