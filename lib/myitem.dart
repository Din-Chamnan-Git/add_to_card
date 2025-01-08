import 'package:flutter/material.dart';

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
        color: Colors.deepOrangeAccent,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Image.asset(
            imagepart,
            height: 65,
          ),
          Text(
            itemName,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Text(
                  price.toString(),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add_box_outlined),
              )
            ],
          )
        ],
      ),
    );
  }
}
