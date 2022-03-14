import 'package:are_you_gopher/page/index_page.dart';
import 'package:are_you_gopher/page/problem_page.dart';
import 'package:are_you_gopher/page/result_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(
          name: '/',
          page: () => IndexPage(),
        ),
        GetPage(
          name: '/problem',
          page: () => ProblemPage(),
        ),
        GetPage(
          name: '/result',
          page: () => ResultPage(),
        ),
      ],
      initialRoute: '/',
    );
  }
}
