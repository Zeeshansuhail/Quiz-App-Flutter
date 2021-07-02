import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz/date/data.dart';
import 'package:quiz/model/getandset.dart';
import 'package:quiz/views/result.dart';

class Quizplay extends StatefulWidget {
  const Quizplay({Key key}) : super(key: key);

  @override
  _QuizplayState createState() => _QuizplayState();
}

class _QuizplayState extends State<Quizplay>
    with SingleTickerProviderStateMixin {
  int index = 0;
  int correct = 0, incorrect = 0, notattemted = 0, points = 0;
  double beginAnim = 0.0;
  double endAnim = 1.0;
  Animation animation;
  AnimationController animationController;
  List<questionmodel> _question = List<questionmodel>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _question = question();
    animationController =
        AnimationController(duration: const Duration(seconds: 10), vsync: this)
          ..addListener(() {
            setState(() {});
          });
    animation =
        Tween(begin: beginAnim, end: endAnim).animate(animationController);
    startAnim();

    animationController.addStatusListener((AnimationStatus status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          if (index < _question.length - 1) {
            notattemted++;
            index++;
            resetAnim();
            startAnim();
          } else {
            notattemted++;
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => Result(
                          score: points,
                          correct: correct,
                          totalquestion: _question.length,
                          notattemted: notattemted,
                          incorrect: incorrect,
                        )));
          }
        });
      }
    });
  }

  startAnim() {
    animationController.forward();
  }

  resetAnim() {
    animationController.reset();
  }

  stopAnim() {
    animationController.stop();
  }

  void nextquestion() {
    if (index < _question.length - 1) {
      setState(() {
        resetAnim();
        startAnim();
        index++;
      });
    } else {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => Result(
                    score: points,
                    correct: correct,
                    totalquestion: _question.length,
                    notattemted: notattemted,
                    incorrect: incorrect,
                  )));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              Text(
                "${index + 1}/${_question.length}",
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                width: 7,
              ),
              Text(
                "Question",
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
              Spacer(),
              Text(
                "${points}",
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                width: 7,
              ),
              Text(
                "Points",
                style: TextStyle(fontWeight: FontWeight.w400),
              )
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "${_question[index].getQuestion()} ?",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          LinearProgressIndicator(
            value: animation.value,
          ),
          Image.network(_question[index].getImageurl()),
          Spacer(),
          Row(
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    if (_question[index].getAnswer() == "True") {
                      setState(() {
                        correct++;
                        points = points + 20;

                        nextquestion();
                      });
                    } else {
                      setState(() {
                        incorrect++;
                        points = points - 5;

                        nextquestion();
                      });
                    }
                  },
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 16.0, horizontal: 26.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(27),
                      color: Colors.blue,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "True",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    if (_question[index].getAnswer() == "False") {
                      setState(() {
                        correct++;
                        points = points + 20;

                        nextquestion();
                      });
                    } else {
                      incorrect++;
                      setState(() {
                        points = points - 5;

                        nextquestion();
                      });
                    }
                  },
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 16.0, horizontal: 26.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(27),
                      color: Colors.red,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "False",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    )));
  }
}
