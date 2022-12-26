import 'package:demo/app/data/model/products_model.dart';
import 'package:demo/app/modules/home/providers/products_provider.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxList<Products?> productsList = <Products?>[].obs;

  @override
  void onReady() {
    populateList();
    super.onReady();
  }

  void populateList() async {
    try {
      productsList.value = await Get.find<ProductsProvider>().getProducts();
    } catch (e) {
      populateList();
    }
  }

  List handleResponse(Future list) {
    return [];
  }
}
