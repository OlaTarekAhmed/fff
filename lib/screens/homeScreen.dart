import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:wordapp/screens/product_screen.dart';
import 'package:wordapp/screens/data1.dart';
import 'package:wordapp/screens/data2.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "My Shop",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          backgroundColor: const Color.fromARGB(250, 207, 39, 137),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.card_giftcard),
            ),
            const SizedBox(
              width: kDoubleTapSlop / 10,
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(children: <Widget>[
            Row(
              children: [
                const SizedBox(
                  width: 50,
                ),
                Column(
                  children: [
                    Container(
                      width: 150,
                      margin: const EdgeInsets.all(0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                            'https://cdn.shopify.com/s/files/1/0460/9336/9512/products/tgh0094-f_large.jpg?v=1628898133'),
                      ),
                    ),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const info2()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            primary: const Color.fromARGB(164, 0, 0, 0),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 60, vertical: 15),
                            textStyle: const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                        child: const Text(
                          'Shirt',
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    const SizedBox(
                      width: 200,
                    ),
                    Container(
                      width: 150,
                      margin: const EdgeInsets.all(0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQV4mes9yAurB-atkbGjY332e8sO818d7SYhhVVY0rrrcLOPMSflGEAE-S1pADXtFyTZrw&usqp=CAU'),
                      ),
                    ),

                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const info()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            primary: const Color.fromARGB(164, 0, 0, 0),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 38, vertical: 15),
                            textStyle: const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                        child: const Text(
                          'Jeans Shirt',
                        ),
                      ),
                    ),

                    ////////////////////////////////////////////////
                  ],
                ),
              ],
            ),
          ]),
        ),
        floatingActionButton: SizedBox(
            height: 100,
            child: Center(
              child: FloatingActionButton(
                child: Text(
                  "Add",
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                backgroundColor: const Color.fromARGB(250, 207, 39, 137),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const WordScreen()),
                  );
                },
              ),
            )));
  }
}
