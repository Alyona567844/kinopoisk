import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kinopoisk/app/modules/media/media_controller.dart';

class MediaPage extends GetView<MediaController> {
  final VoidCallback onButtonPressed;

  const MediaPage({super.key, required this.onButtonPressed});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(title: Text('MediaPage')),

    body: SafeArea(
      child: Text('MediaController'))
    );
  }
}