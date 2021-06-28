import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class CarPage extends Page<CarState, Map<String, dynamic>> {
  CarPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<CarState>(
                adapter: null,
                slots: <String, Dependent<CarState>>{
                }),
            middleware: <Middleware<CarState>>[
            ],);

}
