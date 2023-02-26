import 'package:get/state_manager.dart';
import '../models/product.dart';

class ShoppingController extends GetxController {
  var products = <Product>[].obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    await Future.delayed(Duration(seconds: 1));
    var ProductResult = [
      Product(
        id: 1,
        productImage: 'image',
        productDesrciption: 'Test Hello World',
        productName: 'Item1',
        price: 500,
      ),
      Product(
        id: 2,
        productImage: 'image',
        productDesrciption: 'Test Hello World',
        productName: 'Item1',
        price: 500,
      ),
      Product(
        id: 3,
        productImage: 'image',
        productDesrciption: 'Test Hello World',
        productName: 'Item1',
        price: 500,
      ),
      Product(
        id: 4,
        productImage: 'image',
        productDesrciption: 'Test Hello World',
        productName: 'Item1',
        price: 500,
      ),
    ];
    products.assignAll(ProductResult);
  }
}
