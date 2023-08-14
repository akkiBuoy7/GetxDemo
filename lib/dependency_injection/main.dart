import 'package:flutter/material.dart';
import 'package:getx_demo/dependency_injection/view/getx_counter_page.dart';
import 'package:getx_demo/dependency_injection/view/obx_counter_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  MyObxCounter(title: "Dependency Injection"),
    );
  }
}

