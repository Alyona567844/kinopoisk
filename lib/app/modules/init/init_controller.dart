
import 'package:get/get.dart';

class InitController extends GetxController {
  @override
  void onReady() async {
    await Future.delayed(const Duration(seconds: 8));
    Get.offAndToNamed('main');
    super.onReady();
  }
}