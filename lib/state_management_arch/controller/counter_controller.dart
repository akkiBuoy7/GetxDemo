import 'package:get/get.dart';
import 'package:getx_demo/state_management_arch/model/counter_model.dart';

class MyController extends GetxController {
  final counterObj = Counter().obs;

  incrementCounter() {
    counterObj.value.counter = (counterObj.value.counter) + 1;
    counterObj.refresh();
  }
}
