// ignore_for_file: file_names

import 'dart:developer';

import 'package:get/get.dart';
import 'package:getx_model/app/model/restaurants.dart';
import 'package:getx_model/app/service/headers.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static Future<Restaurants> ftachApiData(var offset) async {
    var url =
        'https://demo.6amtech.com/stackfood/api/v1/restaurants/get-restaurants/all?offset=$offset&limit=10';
    final getUri = Uri.parse(url);

    final responce = await http.get(getUri, headers: Headers.getHeader);
    responce.body[0];
    return restaurantsFromJson(responce.body);
  }
}
