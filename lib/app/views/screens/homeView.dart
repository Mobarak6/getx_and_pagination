// ignore_for_file: file_names

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_model/app/controllers/home_controler.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);
  final controler = Get.find<HomeController>();
  bool _isSanakbar = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text('Home'),
          ),
          body: Obx(() {
            return ListView.builder(
                physics: const BouncingScrollPhysics(),
                controller: controler.scrollController,
                itemCount: controler.isPageAvailabe
                    ? controler.restaurantList.length + 1
                    : controler.restaurantList.length,
                itemBuilder: (context, index) {
                  if (index == controler.restaurantList.length) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  if (!controler.isPageAvailabe) {
                    // log('snakbar');
                    _isSanakbar
                        ? Future.delayed(Duration.zero).then((value) {
                            _isSanakbar = false;
                            Get.snackbar(
                              'Notice',
                              'No more Data',
                              snackPosition: SnackPosition.BOTTOM,
                              backgroundColor: Colors.red,
                            );
                          })
                        : Future.delayed(Duration.zero);
                  }

                  return Container(
                    margin: const EdgeInsets.all(10),
                    height: 200,
                    child: GridTile(
                        header: Container(
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.black26,
                              borderRadius: BorderRadius.circular(10)),
                          alignment: Alignment.center,
                          child: Text(
                            controler.restaurantList[index].name!,
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: FadeInImage(
                            placeholder: const AssetImage(
                                'lib/assets/images/placeHolder.png'),
                            image: NetworkImage(
                              'https://demo.6amtech.com/stackfood/storage/app/public/restaurant/cover/${controler.restaurantList[index].coverPhoto}',
                            ),
                            fit: BoxFit.cover,
                          ),
                        )),
                  );
                });
          })),
    );
  }
}
