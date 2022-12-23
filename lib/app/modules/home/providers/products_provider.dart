import 'package:demo/app/util/app_const.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/model/products_model.dart';

class ProductsProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Products.fromJson(map);
      if (map is List) {
        return map.map((item) => Products.fromJson(item)).toList();
      }
    };
    httpClient.baseUrl = AppConst.BASEURL;
  }

  Future<List<Products?>> getProducts() async {
    Response response;

    response = await get(AppConst.PRODUCTS).catchError(
      (error) {
        debugPrint("API CALL FAILED => Error : $error");
        Get.showSnackbar(
          GetSnackBar(
            title: "Error Retriving data",
            message: 'Status Code : $error',
            isDismissible: true,
          ),
        );
      },
    );
    return response.body;
  }

  Future<Response> getSingleProduct(int id) async =>
      await get(AppConst.PRODUCTS + id.toString());
}
