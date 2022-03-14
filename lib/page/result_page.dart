import 'package:are_you_gopher/controller/problem_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<ProblemController>();
    var corrects = 0;
    for (int i = 0; i < controller.answered.length; i++) {
      if (controller.answered[i].answer.isEqual(controller.answers[i])) {
        corrects++;
      }
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('결과'),
      ),
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            Text('점수 $corrects/${controller.answered.length}'),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
