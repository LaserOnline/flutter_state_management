import 'package:get/state_manager.dart';
import '../models/product.dart';

class CartController extends GetxController {
  var carItems = <Product>[].obs;
  double get totalPrice => carItems.fold(0, (sum, item) => sum + item.price);

  int get count => carItems.length;
  addToCart(Product product) {
    carItems.add(product);
  }
}
