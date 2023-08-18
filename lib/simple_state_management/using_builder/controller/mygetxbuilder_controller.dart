import 'package:get/get.dart';

import '../../../state_management_arch/model/counter_model.dart';

class GetXBuilderController extends GetxController {
  final counterObj = Counter();

  void incrementCounter(){
    counterObj.counter = counterObj.counter+1;
    // update();
    update(['123']);
  }
}