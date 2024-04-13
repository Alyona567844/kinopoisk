import 'package:get/get.dart';

class MainController extends GetxController {
  RxInt selectPage = 0.obs;

  void pageTap(int index) {
    selectPage.value = index;
  }
}
