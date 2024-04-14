import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kinopoisk/app/routes/app_pages.dart';
import 'package:kinopoisk/app/services/api_service.dart';

void main() async {
  await initServices();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: AppPages.pages,
      initialRoute: Routes.MAIN,
    ),
  );
}

Future<void> initServices() async {
  Get.put(ApiService());
}
