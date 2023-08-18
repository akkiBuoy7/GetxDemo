import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/increment_controller.dart';

class IncrementPage extends StatefulWidget {
  const IncrementPage({Key? key}) : super(key: key);

  @override
  State<IncrementPage> createState() => _IncrementPageState();
}

class _IncrementPageState extends State<IncrementPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Increment Page"), automaticallyImplyLeading: false),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GetX<IncrementController>(
              builder: (controllerIns) => Center(
                  child: Text('${controllerIns.counterObj.value.counter}',
                      style: TextStyle(fontSize: 20)))),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
              onPressed: () {
                Get.toNamed('/second');
              },
              child: Text("Next Page"))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          var controller = Get.find<IncrementController>();
          controller.increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
