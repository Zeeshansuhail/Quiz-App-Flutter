import 'package:flutter/material.dart';
import 'package:quiz/views/quiz_play.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => Quizplay()));
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 54.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(27),
              color: Colors.blue,
            ),
            child: Text(
              "Start Quiz Now",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ),
    );
  }
}
