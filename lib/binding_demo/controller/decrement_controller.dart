import 'package:get/get.dart';
import '../model/binding_counter.dart';

class DecrementController extends GetxController{
  final counterObj = BindingCounter().obs;

  void decrement(){
    counterObj.value.counter = counterObj.value.counter!-1;
    counterObj.refresh();
  }
}