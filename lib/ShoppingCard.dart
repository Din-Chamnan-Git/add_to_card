import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'product.dart';

class Shoppingcard extends StatelessWidget {
  const Shoppingcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shopping Cart"),
      ),
      body: Consumer<ProductModel>(
        builder: (context, productModel, child) {
          return productModel.card.isEmpty
              ? const Center(child: Text("Your cart is empty."))
              : ListView.builder(
                  itemCount: productModel.card.length,
                  itemBuilder: (context, index) {
                    final cartItem = productModel.card[index];
                    return ListTile(
                      leading:
                          Image.asset(cartItem["image"], width: 50, height: 50),
                      title: Text(cartItem["name"]),
                      subtitle:
                          Text("\$${cartItem["price"].toStringAsFixed(2)}"),
                      trailing: IconButton(
                        icon: const Icon(Icons.remove_circle),
                        onPressed: () {
                          // productModel.removeFromCart(cartItem["name"]);
                        },
                        color: Colors.red,
                      ),
                    );
                  },
                );
        },
      ),
    );
  }
}
