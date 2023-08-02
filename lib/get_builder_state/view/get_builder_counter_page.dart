import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/counter_controller_builder.dart';

class MyGetXCounter extends StatefulWidget {
  const MyGetXCounter({super.key, required this.title});

  final String title;

  @override
  State<MyGetXCounter> createState() => _MyGetXCounterState();
}

class _MyGetXCounterState extends State<MyGetXCounter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GetBuilder<MyBuilderController>(
                init: MyBuilderController(),
                builder: (controllerIns) => Text(
                      '${controllerIns.counter.value?.counter}',
                      style: Theme.of(context).textTheme.headlineMedium,
                    )),
            GetBuilder<MyBuilderController>(
              id: "123",
                init: MyBuilderController(),
                builder: (controllerIns) => Text(
                  '${controllerIns.counter.value?.counter}',
                  style: Theme.of(context).textTheme.headlineMedium,
                )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          var myController = Get.find<MyBuilderController>();
          myController.incrementCounter();
          print(myController.counter.value?.counter);
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
