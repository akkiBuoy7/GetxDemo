import 'package:get/get.dart';
import 'package:getx_demo/binding_demo/controller/decrement_controller.dart';
import 'package:getx_demo/binding_demo/controller/increment_controller.dart';

class IncrementBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IncrementController());
  }
}
