import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:quiz/views/home.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutterdemo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Homepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
