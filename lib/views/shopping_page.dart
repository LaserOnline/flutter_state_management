import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/shopping_controller.dart';
import '../controllers/cart_controller.dart';

class ShoppingPage extends StatelessWidget {
  final shppingController = Get.put(ShoppingController());
  final cartController = Get.put(CartController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: GetX<ShoppingController>(
                builder: (controller) {
                  return ListView.builder(
                    itemCount: controller.products.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        margin: const EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "${controller.products[index].productName}",
                                  style: TextStyle(fontSize: 24),
                                ),
                                Text(
                                    "${controller.products[index].productDesrciption}"),
                                Text(
                                  "${controller.products[index].price}",
                                  style: TextStyle(fontSize: 24),
                                ),
                              ],
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                primary: Colors.blue,
                              ),
                              onPressed: () {
                                cartController
                                    .addToCart(controller.products[index]);
                              },
                              child: Text('add to cart'),
                            )
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            GetX<CartController>(
              builder: (controller) {
                return Text(
                  "Total Amount: \s ${controller.totalPrice}",
                  style: TextStyle(fontSize: 32, color: Colors.white),
                );
              },
            ),
            // Text("Total Amount"),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: GetX<CartController>(
          builder: (controller) {
            return Text(
              controller.count.toString(),
              style: TextStyle(color: Colors.white, fontSize: 28),
            );
          },
        ),
        icon: Icon(
          Icons.add_shopping_cart_outlined,
          color: Colors.white,
        ),
      ),
    );
  }
}
