import 'package:flutter/material.dart';
import 'package:getx_demo/simple_state_management/using_builder/view/get_builder_simple_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GetBuilderSimple Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GetBuilderSimplePage(),
    );
  }
}

