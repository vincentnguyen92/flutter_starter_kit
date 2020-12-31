import 'dart:io';

import 'package:get/get.dart';
import '../models/app_info.dart';
import '../services/home_service.dart';

class HomeController extends GetxController {
  var appInfo = AppInfo().obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    fetchAppInfo();
    super.onInit();
  }

  void fetchAppInfo() async {
    isLoading(true);
    try {
      var appInfo = await HomeService.fetchAppInfo();

      if (appInfo != null) {
        this.appInfo.value = appInfo;
      }
    } finally {
      // isLoading(false);
    }
  }
}
