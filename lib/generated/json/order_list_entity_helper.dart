import 'package:FlutterDemo/Model/order_list_entity.dart';

orderListEntityFromJson(OrderListEntity data, Map<String, dynamic> json) {
	if (json['orderNo'] != null) {
		data.orderNo = json['orderNo'].toString();
	}
	if (json['createDateTime'] != null) {
		data.createDateTime = json['createDateTime'].toString();
	}
	return data;
}

Map<String, dynamic> orderListEntityToJson(OrderListEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['orderNo'] = entity.orderNo;
	data['createDateTime'] = entity.createDateTime;
	return data;
}