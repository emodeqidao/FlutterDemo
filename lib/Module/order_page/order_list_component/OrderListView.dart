
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class OrderListView extends StatefulWidget {
  ListAdapter adapter;
  String element;
  OrderListView(this.adapter, this.element, {Key key}) : super(key: key);

  @override
  _OrderListViewState createState() => _OrderListViewState();
}

class _OrderListViewState extends State<OrderListView> with AutomaticKeepAliveClientMixin {

  RefreshController refreshController;

  @override
  void initState() {
    // TODO: implement  initState
    super.initState();
    refreshController = RefreshController(initialRefresh: true);
    print('<><>:' + widget.element);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SmartRefresher(
        controller: refreshController,
        enablePullDown: false,
        child: ListView.builder(
            itemBuilder: widget.adapter.itemBuilder,
            itemCount: widget.adapter.itemCount
        ),
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
