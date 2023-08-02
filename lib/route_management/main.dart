import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/route_management/route_second_page.dart';
import 'package:getx_demo/route_management/unknown.dart';

import 'route_first_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/first",
      defaultTransition: Transition.leftToRight,
      getPages: [
        GetPage(name: "/first", page:() => FirstPage(title: "First")),
        GetPage(name: "/second", page: () => SecondPage()),
      ],
      unknownRoute: GetPage(name: "/unknown",page: () => UnknownPage()),
    );
  }
}