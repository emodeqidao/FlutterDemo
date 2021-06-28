import 'package:fish_redux/fish_redux.dart';

import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class UserItemComponent extends Component<UserItemState> {
  UserItemComponent()
      : super (
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<UserItemState> (
                adapter: null,
                slots: <String, Dependent<UserItemState>> {

                }
                ),
  );

}
