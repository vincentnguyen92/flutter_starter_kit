import 'package:get/get.dart';
import '../models/app_info.dart';
import 'package:http/http.dart' as http;

class HomeService {
  static var client = http.Client();

  static Future<AppInfo> fetchAppInfo() async {
    var response = await client.get('http://jet-api.ethan-tech.asia/api/v1/appinfo');
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return appInfoFromJson(jsonString);
    } else {
      Get.snackbar(
        'Error',
        'Something went wrong while fetching the data',
        snackPosition: SnackPosition.BOTTOM,
      );
      return null;
    }
  }
}
