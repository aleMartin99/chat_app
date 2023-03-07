import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      width: 200,
      margin: const EdgeInsets.only(top: 50),
      child: Column(
        children: [
          const Image(
            image: AssetImage('assets/tag-logo.png'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Text(
              title,
              style: const TextStyle(fontSize: 30),
            ),
          )
        ],
      ),
    ));
  }
}
