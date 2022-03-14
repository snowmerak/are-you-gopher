
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Are you gopher?'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("START!"),
          onPressed: () {
            Get.offAndToNamed('/problem');
          },
        ),
      ),
    );
  }
}
