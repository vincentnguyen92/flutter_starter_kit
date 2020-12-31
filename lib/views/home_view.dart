import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Obx(() {
          if (controller.isLoading.value)
            return Center(
              child: CircularProgressIndicator(
                strokeWidth: 5,
              ),
            );
          else
            return Container(
              child: Column(
                children: [
                  Text("${controller.appInfo.value.data.id}"),
                  Text("${controller.appInfo.value.data.name}"),
                ],
              ),
            );
        }),
      ),
    );
  }
}
