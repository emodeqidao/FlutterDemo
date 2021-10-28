import 'package:fish_redux/fish_redux.dart';

import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class SOrderListItemComponent extends Component<SOrderListItemState> {
  SOrderListItemComponent()
      : super(
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<SOrderListItemState>(
                adapter: null,
                slots: <String, Dependent<SOrderListItemState>>{
                }),);

}
