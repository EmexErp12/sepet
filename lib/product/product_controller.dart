import 'package:get/get.dart';
import 'package:sepet/product/product_model.dart';
import 'package:sepet/repository/product_repository.dart';

class ProductConttroller extends GetxController {
  RxList<ProductModel> list = <ProductModel>[].obs;

  @override
  Future<void> onInit() async {
    super.onInit();

    await getProtuctToApi();
  }

  Future<void> getProtuctToApi() async {
    var repList = await ProductRepository().getProducts();
    list.assignAll(repList);
  }
}
