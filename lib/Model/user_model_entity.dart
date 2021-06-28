import 'package:FlutterDemo/generated/json/base/json_convert_content.dart';

class UserModelEntity with JsonConvert<UserModelEntity> {
	String name;
	int age;
	int sex;
}
