// ignore_for_file: file_names, constant_identifier_names
import 'package:get/get.dart';
import 'package:getx_model/app/bindings/home_binding.dart';
import 'package:getx_model/app/routes/app_Routes.dart';
import 'package:getx_model/app/views/screens/homeView.dart';

class AppPages {
  static const INITIAL = Routes.Home;
  static final routes = [
    GetPage(
      name: Routes.Home,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
  ];
}
