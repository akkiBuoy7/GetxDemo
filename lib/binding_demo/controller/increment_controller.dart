import 'package:get/get.dart';
import 'package:getx_demo/binding_demo/model/binding_counter.dart';

class IncrementController extends GetxController{
  final counterObj = BindingCounter().obs;

  void increment(){
    counterObj.value.counter = counterObj.value.counter!+1;
    counterObj.refresh();
  }
}