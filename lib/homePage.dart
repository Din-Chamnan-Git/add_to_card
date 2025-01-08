import 'package:demo_add_to_card/product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'myitem.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My SHOP"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(
                    bottom: 20), // Adds space below the text
                child: const Text(
                  "My Product",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold), // Styling the text
                ),
              ),
              Expanded(child: Consumer<ProductModel>(
                builder: (context, value, child) {
                  return GridView.builder(
                    itemCount: value.listProducts.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Myitem(
                          itemName: value.listProducts[index][0],
                          price: value.listProducts[index][1],
                          imagepart: value.listProducts[index][2],
                        ),
                      );
                    },
                  );
                },
              )),
            ],
          ),
        ),
      ),
    );
  }
}
