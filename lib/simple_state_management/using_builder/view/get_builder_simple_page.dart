import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/mygetxbuilder_controller.dart';

class GetBuilderSimplePage extends StatefulWidget {
  const GetBuilderSimplePage({Key? key}) : super(key: key);

  @override
  State<GetBuilderSimplePage> createState() => _GetBuilderSimplePageState();
}

class _GetBuilderSimplePageState extends State<GetBuilderSimplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder(
          init: GetXBuilderController(),
          id: '123',
          builder: (controller) => Center(
                  child: Text(
                "${controller.counterObj.counter}",
                    style: TextStyle(fontSize: 50),
              ))),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            var controller = Get.find<GetXBuilderController>();
            controller.incrementCounter();
          }),
    );
  }
}
