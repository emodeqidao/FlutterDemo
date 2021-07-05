import 'package:FlutterDemo/Model/user_model_entity.dart';
import 'package:fish_redux/fish_redux.dart';

class UserItemState implements Cloneable<UserItemState> {
  UserModelEntity user;

  UserItemState({this.user});

  @override
  UserItemState clone() {
    return UserItemState()
    ..user = user;
  }
}

UserItemState initState(Map<String, dynamic> args) {
  return UserItemState();
}
