import 'package:sepet/product/product_model.dart';

class ProductRepository {
  Future<List<ProductModel>> getProducts() async {
    // var gelenString = await ApiService.get();

    // var gelenJsond = json.decode(gelenString);

    List<ProductModel> products = [];

    products.add(ProductModel(id: '1', name: "Çiçek", price: 10));
    products.add(ProductModel(id: '2', name: "Kahve", price: 20));
    products.add(ProductModel(id: '3', name: "Kola", price: 30));
    products.add(ProductModel(id: '4', name: "Cay", price: 40));
    products.add(ProductModel(id: '5', name: "Simit satan damdan alina ankara simidi ama ici tereyali", price: 15.55));
    products.add(ProductModel(id: '6', name: "Puaca", price: 7.50));
    products.add(ProductModel(id: '7', name: "Su", price: 3));

    return products;
  }
}
