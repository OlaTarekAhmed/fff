import 'package:flutter/material.dart';
import 'package:wordapp/modal/pagemodal.dart';
import 'package:wordapp/widgets/add_widgets.dart';
import 'package:wordapp/widgets/info_widget.dart';
import 'package:wordapp/screens/Edit.dart';

class WordScreen extends StatefulWidget {
  const WordScreen({Key? key}) : super(key: key);

  @override
  State<WordScreen> createState() => _WordScreenState();
}

class _WordScreenState extends State<WordScreen> {
  final List<WordModel> words = [];
  bool isDeleted = false;
  void deleteWord(String id) {
    setState(() {
      words.removeWhere((element) => element.id == id);
    });
  }

  void addWord(WordModel word) {
    setState(() {
      words.add(word);
    });
    Navigator.of(context).pop();
  }

  showBottomSheet() {
    return showModalBottomSheet(
      context: context,
      builder: (context) => BottomSheetWidget(addWord: addWord),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Your Product",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(250, 207, 39, 137),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  Edit()),
              );
            },
            icon: const Icon(Icons.edit),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemBuilder: ((context, index) => WordTile(
                img: words[index].imageURL,
                title: words[index].word,
                trailing: Column(
                  children: [
                    IconButton(
                        onPressed: () => deleteWord(words[index].id),
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.red,
                        )),
                  ],
                ),
              )),
          itemCount: words.length,
        ),
      ),
      floatingActionButton: SizedBox(
        height: 100,
        child: Center(
          child: FloatingActionButton(
            onPressed: showBottomSheet,
            child: const Center(
                child: Text(
              "Add",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )),
            backgroundColor: Color.fromARGB(250, 207, 39, 137),
          ),
        ),
      ),
    );
  }
}
