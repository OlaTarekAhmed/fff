import 'package:flutter/material.dart';

class WordTile extends StatelessWidget {
  final String title;
  final String img;
  final Widget trailing;

  const WordTile({
    required this.title,
    required this.img,
    required this.trailing,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(img),
          radius: 20,
        ),
        title: Text(title),
        trailing: trailing,
      ),
    );
  }
}
