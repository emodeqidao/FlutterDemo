import 'package:FlutterDemo/Model/user_model_entity.dart';

userModelEntityFromJson(UserModelEntity data, Map<String, dynamic> json) {
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['age'] != null) {
		data.age = json['age'] is String
				? int.tryParse(json['age'])
				: json['age'].toInt();
	}
	if (json['sex'] != null) {
		data.sex = json['sex'] is String
				? int.tryParse(json['sex'])
				: json['sex'].toInt();
	}
	return data;
}

Map<String, dynamic> userModelEntityToJson(UserModelEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['name'] = entity.name;
	data['age'] = entity.age;
	data['sex'] = entity.sex;
	return data;
}