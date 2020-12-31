import 'package:get/get.dart';
import '../bindings/home_binding.dart';
import '../views/home_view.dart';

part 'app_routes.dart';

// ignore: avoid_classes_with_only_static_members
class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
      children: [],
    ),
  ];
}
