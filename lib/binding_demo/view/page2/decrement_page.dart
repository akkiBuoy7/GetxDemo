import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/binding_demo/controller/decrement_controller.dart';

import '../../controller/increment_controller.dart';

class DecrementPage extends StatefulWidget {
  const DecrementPage({Key? key}) : super(key: key);

  @override
  State<DecrementPage> createState() => _DecrementPageState();
}

class _DecrementPageState extends State<DecrementPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Decerement Page"),
      automaticallyImplyLeading: false,),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GetX<DecrementController>(
              builder: (controllerIns) => Center(
                      child: Text(
                    '${controllerIns.counterObj.value.counter}',
                    style: TextStyle(fontSize: 20),
                  ))),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
              onPressed: () {
                Get.toNamed('/first');
              },
              child: Text("Previous Page"))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          var controller = Get.find<DecrementController>();
          controller.decrement();
        },
        child: Icon(Icons.minimize),
      ),
    );
  }
}
