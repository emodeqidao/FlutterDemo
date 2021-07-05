
import 'package:FlutterDemo/Page/main_page/page.dart';
import 'package:FlutterDemo/Page/order_page/page.dart';
import 'package:fish_redux/fish_redux.dart';

class myRoutes {
  static final AbstractRoutes routes = PageRoutes(
    pages: <String, Page<Object, dynamic>> {
      'home_page': MainPage(),
      'order_list_page': OrderPage(),
    },
  );
}
