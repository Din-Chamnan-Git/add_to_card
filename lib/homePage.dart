import 'package:flutter/material.dart';

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
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    4, // Number of items
                    (index) => Card(
                      elevation: 5,
                      margin:
                          const EdgeInsets.all(8.0), // Adds space between cards
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/potato.png",
                            width: 150, // Set the width of the image
                            height: 150, // Set the height of the image
                            fit: BoxFit.cover, // Makes the image fit nicely
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.add),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
