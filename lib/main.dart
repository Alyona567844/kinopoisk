import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kinopoisk/app/modules/my/my_controller.dart';
import 'package:kinopoisk/app/routes/app_pages.dart';
import 'package:kinopoisk/app/services/api_service.dart';

void main() async {
  await initServices();
  Get.lazyPut(()=>MyController());
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: AppPages.pages,
      initialRoute: Routes.INIT,
    ),
  );
}

Future<void> initServices() async {
  Get.put(ApiService());
}
