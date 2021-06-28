import 'package:fish_redux/fish_redux.dart';

class CarState implements Cloneable<CarState> {

  @override
  CarState clone() {
    return CarState();
  }
}

CarState initState(Map<String, dynamic> args) {
  return CarState();
}
