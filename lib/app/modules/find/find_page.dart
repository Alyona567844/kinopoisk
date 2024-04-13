import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kinopoisk/app/modules/find/find_controller.dart';

class FindPage extends GetView<FindController> {

  const FindPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(title: Text('FindPage')),

    body: SafeArea(
      child: Text('FindController'))
    );
  }
}