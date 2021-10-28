import 'dart:developer';

import 'package:get/get.dart';
import 'package:getx_model/app/controllers/home_controler.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
