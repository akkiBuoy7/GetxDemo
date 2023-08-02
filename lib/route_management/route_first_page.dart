
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_demo/route_management/route_second_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key, required this.title});

  final String title;


  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  String res = "";
  String data1 = "Data 1 from first page";
  String data2 = "Data 2 from second page";
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
            Text(
              res,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // onPressed: () async{
        //
        //    res = await Get.to(()=>SecondPage(),
        //       arguments: "Data from first page",
        //       transition: Transition.zoom,
        //       duration: Duration(seconds: 2));
        //
        //    print(res);
        //
        //    setState(() {
        //    });
        //
        //   // Get.to(()=>SecondPage(),
        //   // arguments: "Data from first page",
        //   // transition: Transition.zoom,
        //   // duration: Duration(seconds: 2));
        // },
        onPressed: () async {
          res = await Get.toNamed("/second?data1=${data1}&data2=${data2}");

          setState(() {
          });
        },
        child: const Text("Next"),
      ),
    );
  }
}