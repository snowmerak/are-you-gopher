
import 'package:get/get.dart';

import '../Problem/problem.dart';

class ProblemController extends GetxController {
  int totalScore = 0;
  int problemCount = 0;
  String problemName = '문제 이름';
  String problemDesc = '문제 설명';

  List<Problem> problems = getProblems();
  List<Problem> answered = [];
  List<int> answers = [];

  void next() {
    if (problems.isEmpty) {
      Get.toNamed('/result');
      return;
    }
    problems.shuffle();
    var last = problems.last;
    problems.removeLast();
    problemCount++;
    problemName = last.name;
    problemDesc = last.desc;
    answered.add(last);
    update();
  }

  void select(String value) {
    answers.add(answered.last.choices.indexOf(value));
    next();
  }

  ProblemController() {
    next();
  }
}