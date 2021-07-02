import 'package:flutter/material.dart';

class questionmodel {
  String Question;
  String imageurl;
  String answer;

  questionmodel({this.Question, this.imageurl, this.answer});

  void setQuestion(String getQuestion) {
    Question = getQuestion;
  }

  void setImageurl(String getImageurl) {
    imageurl = getImageurl;
  }

  void setAnswer(String getAnswer) {
    answer = getAnswer;
  }

  String getQuestion() {
    return Question;
  }

  String getImageurl() {
    return imageurl;
  }

  String getAnswer() {
    return answer;
  }
}
