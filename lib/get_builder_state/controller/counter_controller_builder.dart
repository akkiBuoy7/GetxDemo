import 'package:get/get.dart';
import 'package:getx_demo/state_management_arch/model/counter_model.dart';

class MyBuilderController extends GetxController {
  final counter = Rxn<Counter>();

  var z = 0.obs;

  MyBuilderController() {
    counter.value = Counter();
  }

  @override
  void onInit() {

    // called every time when value changes
    // ever(counter.value?.counter as RxInterface<Object?>, (callback) => print("ever"));

    // called every time when value changes in list
    // everAll( [counter.value?.counter as RxInterface<Object?>], (callback) => print("everAll"));

    debounce(counter.value?.counter as RxInterface<Object?>, (callback) => print("debounce"),
    time: Duration(seconds: 5));
    super.onInit();
  }

  incrementCounter() {
    counter.value?.counter = (counter.value?.counter)! + 1;
    update(['123']);
  }
}
