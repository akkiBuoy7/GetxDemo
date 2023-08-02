import 'package:get/get.dart';
import 'package:getx_demo/state_management_arch/model/counter_model.dart';

class MyBuilderController extends GetxController {
  final counter = Rxn<Counter>();

  MyBuilderController() {
    counter.value = Counter();
  }

  incrementCounter() {
    counter.value?.counter = (counter.value?.counter)! + 1;
    update();
  }
}
