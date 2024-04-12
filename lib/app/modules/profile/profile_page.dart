import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kinopoisk/app/modules/profile/profile_controller.dart';

class ProfilePage extends GetView<ProfileController> {
  final VoidCallback onButtonPressed;

  const ProfilePage({super.key, required this.onButtonPressed});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(title: Text('ProfilePage')),

    body: SafeArea(
      child: Text('ProfileController'))
    );
  }
}