import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/state_management_arch/controller/counter_controller.dart';
import 'package:getx_demo/state_management_arch/model/counter_model.dart';

class MyGetXCounter extends StatefulWidget {
  const MyGetXCounter({super.key, required this.title});

  final String title;

  @override
  State<MyGetXCounter> createState() => _MyGetXCounterState();
}

class _MyGetXCounterState extends State<MyGetXCounter> {
  var myController = Get.put(MyController());

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
            Obx(
              // widget to listen to observable variable
              () => Text(
                '${myController.counter.value?.counter}',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myController.incrementCounter();
          print(myController.counter.value?.counter);

        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
