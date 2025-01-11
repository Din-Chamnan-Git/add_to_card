import 'package:demo_add_to_card/product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Myitem extends StatelessWidget {
  final String itemName;
  final double price;
  final String imagepart;
  const Myitem(
      {super.key,
      required this.itemName,
      required this.price,
      required this.imagepart});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors
            .deepOrangeAccent.shade100, // Softer color for better contrast
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: Offset(2, 4),
          ),
        ],
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Center(
              child: Image.asset(
                imagepart,
                height: 65,
              ),
            ),
          ),
          const SizedBox(height: 8), // Add spacing between image and text
          Text(
            itemName,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4), // Add spacing between name and price
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$${price.toStringAsFixed(2)}', // Display price with 2 decimal places
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
              ),
              IconButton(
                onPressed: () {
                  Provider.of<ProductModel>(context, listen: false)
                      .addToCard(itemName, price, imagepart);
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("$itemName added Already !!")));
                  // Add your action here
                },
                icon: const Icon(
                  Icons.add_box_outlined,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
