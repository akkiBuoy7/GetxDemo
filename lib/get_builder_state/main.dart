import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getx_demo/get_builder_state/view/get_builder_counter_page.dart';


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
      home: const MyGetXCounter(title: 'GETBuilder ARCH'),
    );
  }
}