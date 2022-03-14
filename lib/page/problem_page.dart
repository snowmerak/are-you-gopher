import 'dart:math';

import 'package:are_you_gopher/problem/problem.dart';
import 'package:are_you_gopher/controller/problem_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProblemPage extends StatelessWidget {
  const ProblemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProblemController>(
      init: ProblemController(),
      builder: (controller) => Scaffold(
        appBar: AppBar(
            title:
                Text('${controller.problemCount}번 ${controller.problemName}')),
        body: Center(
          child: Column(
            children: [
              const Spacer(),
              Text(controller.problemDesc),
              const SizedBox(
                height: 8.0,
              ),
              Column(
                children: controller.answered.last.choices
                    .map((e) => Container(
                          padding: const EdgeInsets.all(4.0),
                          child: ElevatedButton(
                            child: Text(e),
                            onPressed: () {
                              controller.select(e);
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.primaries[Random().nextInt(Colors.primaries.length)][Random().nextInt(3) * 100 + 600]),
                            ),
                          ),
                        ))
                    .toList(),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
