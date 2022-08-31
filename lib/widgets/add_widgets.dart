import 'package:flutter/material.dart';
import 'package:wordapp/modal/pagemodal.dart';
import 'info_widget.dart';

class BottomSheetWidget extends StatelessWidget {
  BottomSheetWidget({
    Key? key,
    required this.addWord,
  }) : super(key: key);
  final TextEditingController _wordController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _descController = TextEditingController();
  final TextEditingController _imagController = TextEditingController();

  final Function addWord;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Card(
          color: const Color.fromARGB(253, 211, 219, 221),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              //mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  controller: _wordController,
                  decoration: const InputDecoration(
                    labelText: 'Title',
                    hintText: 'Enter the new title',
                  ),
                ),
                TextFormField(
                  controller: _priceController,
                  decoration: const InputDecoration(
                    labelText: 'Price',
                    hintText: 'Enter the new price',
                  ),
                ),
                TextFormField(
                  controller: _descController,
                  decoration: const InputDecoration(
                    labelText: 'Description',
                    hintText: 'Enter the word description',
                  ),
                  maxLines: 3,
                ),
                TextFormField(
                  controller: _imagController,
                  decoration: const InputDecoration(
                    labelText: 'Image URL',
                    hintText: 'Enter the new imageURL',
                  ),
                  maxLines: 3,
                ),
                FloatingActionButton(
                  onPressed: () {
                    if (_wordController.text.isEmpty ||
                        _descController.text.isEmpty)
                      return;
                    else {
                      return addWord(WordModel(
                        id: DateTime.now().toString(),
                        word: _wordController.text.trim(),
                        price: _priceController.text.trim(),
                        description: _descController.text.trim(),
                        imageURL: _imagController.text.trim(),
                      ));
                    }
                  },
                  // child: Center(
                  //   child: FloatingActionButton(
                  //     child: Text("Add",
                  //         style: TextStyle(
                  //             fontSize: 20, fontWeight: FontWeight.bold)),
                  //     backgroundColor: Color.fromARGB(250, 207, 39, 137),
                  //     onPressed: () {
                  //       Navigator.push(
                  //         context,
                  //         MaterialPageRoute(builder: (context) => product()),
                  //       );
                  //     },
                  //   ),
                  // ),
                  //)
                  child: Text(
                    "add",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  backgroundColor: Color.fromARGB(250, 207, 39, 137),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
