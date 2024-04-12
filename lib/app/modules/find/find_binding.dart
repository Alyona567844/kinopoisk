import 'package:get/get.dart';
import 'package:kinopoisk/app/modules/find/find_controller.dart';

class FindBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<FindController>(() => FindController());
  }
}