import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class info2 extends StatelessWidget {
  const info2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Shirt",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          backgroundColor: const Color.fromARGB(250, 207, 39, 137),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  width: 150,
                  margin: const EdgeInsets.all(10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      'https://cdn.shopify.com/s/files/1/0460/9336/9512/products/tgh0094-f_large.jpg?v=1628898133',
                    ),
                  ),
                ),
              ),
              Card(
                color: const Color.fromARGB(255, 227, 227, 227),
                elevation: 7,
                child: Row(
                  children: [
                    Padding(
                      padding:const EdgeInsets.all(10.0),
                      child: Row(
                        children: const [
                          Text(
                            "\$   120                                        ",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Card(
                color: const Color.fromARGB(255, 227, 227, 227),
                elevation: 7,
                child: Row(
                  children: [
                    Padding(
                      padding:const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Row(
                            children: const [
                              Icon(Icons.description),
                              Text(
                                " Any description for product ",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
