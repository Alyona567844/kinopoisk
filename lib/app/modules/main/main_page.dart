import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kinopoisk/app/constants/constants.dart';
import 'package:kinopoisk/app/modules/find/find_page.dart';
import 'package:kinopoisk/app/modules/first/first_controller.dart';
import 'package:kinopoisk/app/modules/first/first_page.dart';
import 'package:kinopoisk/app/modules/main/main_controller.dart';
import 'package:kinopoisk/app/modules/media/media_page.dart';
import 'package:kinopoisk/app/modules/my/my_page.dart';
import 'package:kinopoisk/app/modules/profile/profile_page.dart';
import 'package:kinopoisk/app/repositories/api_repository.dart';

class MainPage extends GetView<MainController> {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    // String svgString = '''
    // <svg viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg">
    //   <path d="M3.6111 0.357512V5.82496L7.37527 0.357512H11.7579L5.39166 6.76497L17.0153 0.357512V4.42574L6.5787 8.29056L17.0153 7.32589V11.1907L6.5787 10.226L17.0153 14.0909V18.1591L5.39166 11.7516L11.7579 18.1591H7.37214L3.60798 12.6916V18.1591H0V0.357512H3.6111Z" fill="black"/>
    // </svg>
    // ''';
    return Scaffold(
      // appBar: AppBar(
      //   title: SizedBox(
      //     height: 27,
      //     child: ListView(
      //       scrollDirection: Axis.horizontal,
      //       children: [
      //         SvgPicture.string(
      //           svgString,
      //           height: 35,
      //           width: 35,
      //           color: const Color.fromARGB(255, 235, 87, 19),
      //         ),
      //         const SizedBox(width: 13),
      //         const Text(
      //           'Моё кино',
      //           style: TextStyle(
      //             color: Colors.black,
      //             fontWeight: FontWeight.bold,
      //           ),
      //         ),
      //         const SizedBox(width: 13),
      //         const Text('Спорт', style: textA),
      //         const SizedBox(width: 13),
      //         const Text('Каналы', style: textA),
      //         const SizedBox(width: 13),
      //         const Text('Подписки', style: textA),
      //       ],
      //     ),
      //   ),
      // ),
      // appBar: AppBar(
      //   title:Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceAround,
      //     children: [
      //       SvgPicture.string(
      //         svgString,
      //         height: 33,
      //         width: 33,
      //         color: const Color.fromARGB(255, 235, 87, 19),
      //       ),
      //       const SizedBox(width: 150),
      //       const Text('Моё кино'),
      //       const Text('Спорт'),
      //       const Text('Каналы'),
      //       const Text('Подписки'),
      //     ],
      //   ),
      // ),
      // body: CustomScrollView(
      //   slivers: [
      //     SliverAppBar(
      //       backgroundColor: Colors.amber,
      //       expandedHeight: 50,
      //       flexibleSpace: ListView(
      //         scrollDirection: Axis.horizontal,
      //         // mainAxisAlignment: MainAxisAlignment.spaceAround,
      //         children: [
      //           SvgPicture.string(
      //             svgString,
      //             height: 33,
      //             width: 33,
      //             color: const Color.fromARGB(255, 235, 87, 19),
      //           ),
      //           const SizedBox(width: 150),
      //           const Text('Моё кино'),
      //           const Text('Спорт'),
      //           const Text('Каналы'),
      //           const Text('Подписки'),
      //         ],
      //       ),
      //     )
      //   ],
      // ),
      body: Obx(() => getPage(controller.selectPage.value)),
      // bottomNavigationBar: BottomAppBar(
      //   padding: const EdgeInsets.all(0),
      //   height: 60,
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceAround,
      //     children: [
      //       // Obx(
      //       //   () => IconButton(
      //       //     onPressed: () {
      //       //       controller.iconColor(Colors.orange);
      //       //     },
      //       //     icon: Icon(
      //       //       Icons.home,
      //       //       color: controller.iconColor.value,
      //       //     ),
      //       //     iconSize: 25,
      //       //     padding: const EdgeInsets.all(0),
      //       //     constraints: const BoxConstraints(),
      //       //     highlightColor: Colors.grey[400],
      //       //   ),
      //       // ),
      //       // const Text(
      //       //   'Главное',
      //       //   style: TextStyle(fontSize: 10),
      //       // ),
      //       TextButton(
      //         onPressed: () {},
      //         child: Column(
      //           mainAxisSize: MainAxisSize.min,
      //           children: [
      //             Image.network(
      //               'https://cdn-icons-png.flaticon.com/128/6529/6529015.png',
      //               color: colorB,
      //               width: 22,
      //               height: 22,
      //             ),
      //             const Text(
      //               'Главное',
      //               style: TextStyle(fontSize: 10),
      //             ),
      //           ],
      //         ),
      //       ),
      //       TextButton(
      //         onPressed: () {},
      //         child: Column(
      //           mainAxisSize: MainAxisSize.min,
      //           children: [
      //             Image.network(
      //               'https://cdn-icons-png.flaticon.com/128/13652/13652429.png',
      //               color: colorB,
      //               width: 22,
      //               height: 22,
      //             ),
      //             const Text(
      //               'Медиа',
      //               style: TextStyle(fontSize: 10),
      //             ),
      //           ],
      //         ),
      //       ),
      //       TextButton(
      //         onPressed: () {},
      //         child: Column(
      //           mainAxisSize: MainAxisSize.min,
      //           children: [
      //             Image.network(
      //               'https://cdn-icons-png.flaticon.com/128/15434/15434089.png',
      //               color: colorB,
      //               width: 24,
      //               height: 24,
      //             ),
      //             const Text(
      //               'Моё',
      //               style: TextStyle(fontSize: 10),
      //             ),
      //           ],
      //         ),
      //       ),
      //       TextButton(
      //         onPressed: () {},
      //         child: Column(
      //           mainAxisSize: MainAxisSize.min,
      //           children: [
      //             Image.network(
      //               'https://cdn-icons-png.flaticon.com/128/149/149852.png',
      //               color: colorB,
      //               width: 22,
      //               height: 22,
      //             ),
      //             const Text(
      //               'Поиск',
      //               style: TextStyle(fontSize: 10),
      //             ),
      //           ],
      //         ),
      //       ),
      //       TextButton(
      //         onPressed: () {},
      //         child: Column(
      //           mainAxisSize: MainAxisSize.min,
      //           children: [
      //             Image.network(
      //               'https://cdn-icons-png.flaticon.com/128/4526/4526817.png',
      //               color: colorB,
      //               width: 22,
      //               height: 22,
      //             ),
      //             const Text(
      //               'Профиль',
      //               style: TextStyle(fontSize: 10),
      //             ),
      //           ],
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          selectedItemColor: colorO,
          // unselectedItemColor: colorG,
          // unselectedLabelStyle: const TextStyle(color: colorG),
          // selectedLabelStyle: const TextStyle(color: colorO),
          // selectedFontSize: 10.0,
          // unselectedFontSize: 20.0,
          // showSelectedLabels: true,
          items: [
            BottomNavigationBarItem(
              icon: Image.network(
                'https://cdn-icons-png.flaticon.com/128/6529/6529015.png',
                color: controller.selectPage.value == 0 ? colorO : colorG,
                width: 22,
                height: 22,
              ),
              label: 'Главное',
            ),
            BottomNavigationBarItem(
              icon: Image.network(
                'https://cdn-icons-png.flaticon.com/128/13652/13652429.png',
                color: controller.selectPage.value == 1 ? colorO : colorG,
                width: 22,
                height: 22,
              ),
              label: 'Медиа',
            ),
            BottomNavigationBarItem(
              icon: Image.network(
                'https://cdn-icons-png.flaticon.com/128/2791/2791737.png',
                color: controller.selectPage.value == 2 ? colorO : colorG,
                width: 32,
                height: 32,
              ),
              label: 'Моё',
            ),
            BottomNavigationBarItem(
              icon: Image.network(
                'https://cdn-icons-png.flaticon.com/128/149/149852.png',
                color: controller.selectPage.value == 3 ? colorO : colorG,
                width: 22,
                height: 22,
              ),
              label: 'Поиск',
            ),
            BottomNavigationBarItem(
              icon: Image.network(
                'https://cdn-icons-png.flaticon.com/128/4526/4526817.png',
                color: controller.selectPage.value == 4 ? colorO : colorG,
                width: 24,
                height: 24,
              ),
              label: 'Профиль',
            ),
          ],
          currentIndex: controller.selectPage.value,
          onTap: controller.pageTap,
        ),
      ),
    );
  }

  Widget getPage(int index) {
    switch (index) {
      case 0:
        // return const FirstPage();
        return GetBuilder<FirstController>(
          init: FirstController(ApiRepository()),
          builder: (_) {
            return const FirstPage();
          },
        );
      // return const FirstWidget();
      case 1:
        return const MediaPage();
      case 2:
        return const MyPage();
      case 3:
        return const FindPage();
      case 4:
        return const ProfilePage();
      default:
        return Container();
    }
  }
}
