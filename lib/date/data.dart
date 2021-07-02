import 'package:quiz/model/getandset.dart';
import 'package:quiz/model/getandset.dart';

List<questionmodel> question() {
  List<questionmodel> question = new List<questionmodel>();
  questionmodel model = new questionmodel();
  //
  model.setQuestion("A baby has more bones than an adult");
  model.setAnswer("True");
  model.setImageurl(
      "https://images.pexels.com/photos/789786/pexels-photo-789786.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940");
  question.add(model);
  model = new questionmodel();

  //2
  model.setQuestion("A shark can blink its eyes");
  model.setAnswer("True");
  model.setImageurl(
      "https://images.pexels.com/photos/726478/pexels-photo-726478.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940");
  question.add(model);

  model = new questionmodel();

  //3
  model.setQuestion("The U.S dollars are made from fiber");
  model.setAnswer("False");
  model.setImageurl(
      "https://images.pexels.com/photos/259027/pexels-photo-259027.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500");
  question.add(model);

  model = new questionmodel();

  //4
  model.setQuestion("Sandwich is named after a person");
  model.setAnswer("True");
  model.setImageurl(
      "https://images.pexels.com/photos/1647163/pexels-photo-1647163.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500");
  question.add(model);
  model = new questionmodel();

  //5
  model.setQuestion("A tiger gas stripes on its skin");
  model.setAnswer("True");
  model.setImageurl(
      "https://images.pexels.com/photos/302304/pexels-photo-302304.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500");
  question.add(model);

  model = new questionmodel();

  //6
  model.setQuestion("An ostrich has the largest eye in the world");
  model.setAnswer("False");
  model.setImageurl(
      "https://images.pexels.com/photos/60692/bird-animal-nature-strauss-60692.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500");
  question.add(model);

  model = new questionmodel();

  //7
  model.setQuestion("Some 16 billion emails are send daily");
  model.setAnswer("False");
  model.setImageurl(
      "https://images.pexels.com/photos/374074/pexels-photo-374074.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940");
  question.add(model);

  model = new questionmodel();

  //8
  model.setQuestion("Gorilla's blood type is all B");
  model.setAnswer("True");
  model.setImageurl(
      "https://images.pexels.com/photos/2657973/pexels-photo-2657973.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500");
  question.add(model);

  model = new questionmodel();
  return question;
}
