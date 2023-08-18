import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/counter_controller.dart';

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
            GetX<MyController>(
                init: MyController(),
                builder: (controllerIns) => Text(
                      '${controllerIns.counterObj.value.counter}',
                      style: Theme.of(context).textTheme.headlineMedium,
                    )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          var myController = Get.find<MyController>();
          myController.incrementCounter();
          print(myController.counterObj.value.counter);
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
