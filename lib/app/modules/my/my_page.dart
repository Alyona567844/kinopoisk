import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kinopoisk/app/modules/my/my_controller.dart';

class MyPage extends GetView<MyController> {

  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(title: Text('MyPage')),

    body: SafeArea(
      child: Text('MyController'))
    );
  }
}