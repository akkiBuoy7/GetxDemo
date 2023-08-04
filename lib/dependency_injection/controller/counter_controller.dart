import 'package:get/get.dart';
import 'package:getx_demo/dependency_injection/model/counter_model.dart';

class MyController extends GetxController {
  final counter = Rxn<Counter>();


  MyController(){
    counter.value = Counter();
  }

  incrementCounter() {
    counter.value?.counter = (counter.value?.counter)! + 1;
    counter.refresh();
  }
}
