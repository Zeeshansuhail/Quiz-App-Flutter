import 'package:flutter/material.dart';
import 'package:quiz/views/home.dart';
import 'package:quiz/views/quiz_play.dart';

class Result extends StatefulWidget {
  int correct, incorrect, totalquestion, notattemted, score;

  @override
  _ResultState createState() => _ResultState();

  Result(
      {this.correct,
      this.incorrect,
      this.totalquestion,
      this.notattemted,
      this.score});
}

class _ResultState extends State<Result> {
  String Greeting = "";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    var percentages = (widget.score / (widget.totalquestion * 20)) * 100;

    if (percentages > 90) {
      Greeting = "OUTSTANDING ";
    } else if (percentages > 80 && percentages < 90) {
      Greeting = "Good work";
    } else if (percentages > 70 && percentages < 80) {
      Greeting = "Good Effort";
    } else if (percentages < 70) {
      Greeting = "Need Improment";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "$Greeting",
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "You ${widget.score} out of ${widget.totalquestion * 20}",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 13,
              ),
              Text(
                "${widget.correct} Correct,${widget.incorrect} Incorrect & ${widget.notattemted} Not Attempted out of ${widget.totalquestion}",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Quizplay()));
                },
                child: Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 15.0, horizontal: 54.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(27),
                    color: Colors.blue,
                  ),
                  child: Text(
                    "Replay Quiz Now",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Homepage()));
                },
                child: Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 15.0, horizontal: 54.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(27),
                    color: Colors.black,
                  ),
                  child: Text(
                    "Home now",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
