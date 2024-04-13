import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kinopoisk/app/modules/media/media_controller.dart';

class MediaPage extends GetView<MediaController> {

  const MediaPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(title: Text('MediaPage')),

    body: SafeArea(
      child: Text('MediaController'))
    );
  }
}