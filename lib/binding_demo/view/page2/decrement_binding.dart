import 'package:get/get.dart';
import 'package:getx_demo/binding_demo/controller/decrement_controller.dart';

class DecrementBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DecrementController());
  }
}
