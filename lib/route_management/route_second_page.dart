
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key,});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              Get.parameters["data1"]??"",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox.square(dimension: 20,),
            Text(
              Get.parameters["data2"]??"",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Get.back(result: "result from second page");
        },
        child: const Text("Back"),
      ),
    );
  }
}