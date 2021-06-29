import 'package:fish_redux/fish_redux.dart';

import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class OrderListComponent extends Component<OrderListComponentState> {
  OrderListComponent()
      : super(
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<OrderListComponentState>(
                adapter: null,
                slots: <String, Dependent<OrderListComponentState>>{
                }),);

}
