import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart' hide Page;

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class MessagePage extends Page<MessageState, Map<String, dynamic>> {

  @override
  StateWithTickerProvider createState() =>StateWithTickerProvider();

  MessagePage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<MessageState>(
                adapter: null,
                slots: <String, Dependent<MessageState>>{
                }),
            middleware: <Middleware<MessageState>>[
            ],);

}

class StateWithTickerProvider extends ComponentState<MessageState> with TickerProviderStateMixin{

}