import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/binding_demo/view/page1/increment_binding.dart';
import 'package:getx_demo/binding_demo/view/page1/increment_page.dart';
import 'package:getx_demo/binding_demo/view/page2/decrement_binding.dart';
import 'package:getx_demo/binding_demo/view/page2/decrement_page.dart';

import 'all_bindings/all_bindings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //initialBinding: AllBindings(),
      initialRoute: '/first',
      title: 'Flutter Demo',
      getPages: [
        GetPage(name: '/first', page:()=> IncrementPage(),
        binding: IncrementBinding()),
        GetPage(name: '/second', page:()=> DecrementPage(),
        binding: DecrementBinding())
      ],
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Placeholder(),
    );
  }
}

