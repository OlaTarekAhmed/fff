import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:wordapp/modal/pagemodal.dart';

class Edit extends StatelessWidget {
  Edit({
    Key? key,
  }) : super(key: key);
  final TextEditingController _wordController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _descController = TextEditingController();
  final TextEditingController _imgController = TextEditingController();
  // final Function addWord;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Edit Product",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(250, 207, 39, 137),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.save),
          ),
          const SizedBox(
            width: kDoubleTapSlop / 10,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextFormField(
              controller: _wordController,
              decoration: const InputDecoration(
                labelText: 'Title',
              ),
            ),
            TextFormField(
              controller: _priceController,
              decoration: const InputDecoration(
                labelText: 'Price',
              ),
            ),
            TextFormField(
              controller: _descController,
              decoration: const InputDecoration(
                labelText: 'Description',
              ),
              maxLines: 3,
            ),
            TextFormField(
              controller: _imgController,
              decoration: const InputDecoration(
                labelText: 'Image URL',
              ),
              maxLines: 3,
            ),
          ],
        ),
      ),
    );
  }
}
