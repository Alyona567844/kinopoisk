import 'package:get/get.dart';

class MainController extends GetxController {
  RxInt selectPage = 0.obs;

  void pageTap(int index) {
    selectPage.value = index;
  }
  // void pageTap(int index) {
  //   selectPage.value = index;
  //   switch (index) {
  //     case 0:
  //       Get.toNamed('first');
  //       break;
  //     case 1:
  //       Get.toNamed('media');
  //       break;
  //     case 2:
  //       Get.toNamed('my');
  //       break;
  //     case 3:
  //       Get.toNamed('find');
  //       break;
  //     case 4:
  //       Get.toNamed('profile');
  //       break;
  //     default:
  //       null;
  //   }
  // }
}
