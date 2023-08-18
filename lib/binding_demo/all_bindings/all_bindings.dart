import 'package:get/get.dart';

import '../controller/decrement_controller.dart';
import '../controller/increment_controller.dart';

class AllBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IncrementController());
    Get.lazyPut(() => DecrementController());
  }
}
