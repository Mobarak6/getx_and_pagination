import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_model/app/model/restaurants.dart';
import 'package:getx_model/app/service/apiService.dart';

class HomeController extends GetxController {
  ScrollController scrollController = ScrollController();

  // var currentOffset = 0.obs;
  int currentOffset = 0;
  var restaurantList = <Restaurant>[].obs;

  Future<void> fatchData() async {
    final restaurants = await ApiService.ftachApiData(currentOffset);

    var getRestaurantList = restaurants.restaurants;
    restaurantList.addAll(getRestaurantList);
  }

  bool get isPageAvailabe => currentOffset < 2;

  void paginationTask() {
    scrollController.addListener(() {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        currentOffset++;

        //update();
        if (currentOffset < 3) {
          fatchData();
        }
        //log(currentOffset.string);
      }
    });
  }

  @override
  void onInit() async {
    fatchData();
    paginationTask();
    // log(currentOffset.t);
    super.onInit();
  }
}
