import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Page;

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class MainPage extends Page<MainState, Map<String, dynamic>> {
  @override
  StateWithTickerProvider createState() =>StateWithTickerProvider();

  MainPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<MainState>(
                adapter: null,
                slots: <String, Dependent<MainState>>{
                }),
            middleware: <Middleware<MainState>>[
            ],);

}

class StateWithTickerProvider extends ComponentState<MainState> with TickerProviderStateMixin {

}