import 'package:FlutterDemo/Module/home_page/item/component.dart';
import 'package:fish_redux/fish_redux.dart';

import '../state.dart';
import 'reducer.dart';
import 'state.dart';

class UserAdapterAdapter extends SourceFlowAdapter<HomeState> {
  static const String userType = 'user';

  UserAdapterAdapter()
      : super(
          pool: <String, Component<Object>>{
            userType: UserItemComponent(),
          },

          );
}
