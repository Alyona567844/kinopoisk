import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:kinopoisk/app/constants/constants.dart';
import 'package:kinopoisk/app/models/films/films.dart';
import 'package:kinopoisk/app/modules/first/first_controller.dart';
import 'package:kinopoisk/app/modules/main/main_controller.dart';

class FirstPage extends GetView<FirstController> {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    String svgString = '''
    <svg viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg">
      <path d="M3.6111 0.357512V5.82496L7.37527 0.357512H11.7579L5.39166 6.76497L17.0153 0.357512V4.42574L6.5787 8.29056L17.0153 7.32589V11.1907L6.5787 10.226L17.0153 14.0909V18.1591L5.39166 11.7516L11.7579 18.1591H7.37214L3.60798 12.6916V18.1591H0V0.357512H3.6111Z" fill="black"/>
    </svg>
    ''';
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          height: 27,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              SvgPicture.string(
                svgString,
                height: 35,
                width: 35,
                color: colorO,
              ),
              const SizedBox(width: 13),
              const Text(
                'Моё кино',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 13),
              const Text('Спорт', style: textA),
              const SizedBox(width: 13),
              const Text('Каналы', style: textA),
              const SizedBox(width: 13),
              const Text('Подписки', style: textA),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  color: Colors.black,
                  height: MediaQuery.of(context).size.width * 1.3,
                  width: double.infinity,
                  child: Image.network(
                    'https://thumbs.dfs.ivi.ru/storage9/contents/5/9/40a39dd8642747d9e852a93d41fe0c.jpg',
                    fit: BoxFit.fitHeight,
                  ),
                ),
                Positioned(
                  bottom: MediaQuery.of(context).size.width * 0.06,
                  child: Row(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: const Size(150, 50),
                            backgroundColor: colorO),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Image.network(
                              'https://cdn-icons-png.flaticon.com/128/59/59385.png',
                              width: 22,
                              height: 22,
                              color: Colors.white,
                            ),
                            const SizedBox(width: 5),
                            const Text(
                              'Смотреть',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 5),
                      CircleAvatar(
                        backgroundColor: const Color.fromARGB(255, 30, 30, 30),
                        radius: 25,
                        child: IconButton(
                          onPressed: () {},
                          icon: Image.network(
                            'https://cdn-icons-png.flaticon.com/128/7446/7446778.png',
                            width: 20,
                            height: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      CircleAvatar(
                        backgroundColor: const Color.fromARGB(255, 30, 30, 30),
                        radius: 25,
                        child: IconButton(
                          onPressed: () {},
                          icon: Image.network(
                            'https://cdn-icons-png.flaticon.com/128/58/58801.png',
                            width: 20,
                            height: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      'Сериалы на основе ваших интересов',
                      style: textB,
                    ),
                  ),
                  Text(
                    'Все',
                    style: textO,
                  )
                ],
              ),
            ),
            // Obx (()=> Text(controller.string.value)),
            // Obx(
            //   () => SizedBox(
            //     width: 100,
            //     child: ListView.builder(
            //       scrollDirection: Axis.horizontal,
            //       shrinkWrap: true,
            //       itemCount: controller.movies.length,
            //       itemBuilder: (context, index) {
            //         final mov = controller.movies[index];
            //         return ListTile(
            //           title: Text(mov.name),
            //         );
            //       },
            //     ),
            //   ),
            // )
            Obx(
              () => controller.films.when(
                loading: () => const Text("Status:loading"),
                success: (List<Films> list) => ListView.builder(
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    var films = list[index];
                    return ListTile(
                      title: Text(films.name),
                    );
                  },
                ),
                failed: (message, error) => Column(
                  children: [
                    const Text("Status error"),
                    Text(message),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:kinopoisk/app/constants/constants.dart';
// import 'package:kinopoisk/app/modules/main/main_controller.dart';

// class FirstWidget extends StatefulWidget {
//   const FirstWidget({super.key});


//   @override
//   State<FirstWidget> createState() => _FirstWidgetState();
// }

// class _FirstWidgetState extends State<FirstWidget> {
//   @override
//   Widget build(BuildContext context) {
//     String svgString = '''
//     <svg viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg">
//       <path d="M3.6111 0.357512V5.82496L7.37527 0.357512H11.7579L5.39166 6.76497L17.0153 0.357512V4.42574L6.5787 8.29056L17.0153 7.32589V11.1907L6.5787 10.226L17.0153 14.0909V18.1591L5.39166 11.7516L11.7579 18.1591H7.37214L3.60798 12.6916V18.1591H0V0.357512H3.6111Z" fill="black"/>
//     </svg>
//     ''';
//     return Scaffold(
//       appBar: AppBar(
//         title: SizedBox(
//           height: 27,
//           child: ListView(
//             scrollDirection: Axis.horizontal,
//             children: [
//               SvgPicture.string(
//                 svgString,
//                 height: 35,
//                 width: 35,
//                 color: colorO,
//               ),
//               const SizedBox(width: 13),
//               const Text(
//                 'Моё кино',
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               const SizedBox(width: 13),
//               const Text('Спорт', style: textA),
//               const SizedBox(width: 13),
//               const Text('Каналы', style: textA),
//               const SizedBox(width: 13),
//               const Text('Подписки', style: textA),
//             ],
//           ),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Stack(
//               alignment: Alignment.bottomCenter,
//               children: [
//                 Container(
//                   color: Colors.black,
//                   height: MediaQuery.of(context).size.width * 1.3,
//                   width: double.infinity,
//                   child: Image.network(
//                     'https://thumbs.dfs.ivi.ru/storage9/contents/5/9/40a39dd8642747d9e852a93d41fe0c.jpg',
//                     fit: BoxFit.fitHeight,
//                   ),
//                 ),
//                 Positioned(
//                   bottom: MediaQuery.of(context).size.width * 0.06,
//                   child: Row(
//                     children: [
//                       ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                             minimumSize: const Size(150, 50),
//                             backgroundColor: colorO),
//                         onPressed: () {},
//                         child: Row(
//                           children: [
//                             Image.network(
//                               'https://cdn-icons-png.flaticon.com/128/59/59385.png',
//                               width: 22,
//                               height: 22,
//                               color: Colors.white,
//                             ),
//                             const SizedBox(width: 5),
//                             const Text(
//                               'Смотреть',
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       const SizedBox(width: 5),
//                       CircleAvatar(
//                         backgroundColor: const Color.fromARGB(255, 30, 30, 30),
//                         radius: 25,
//                         child: IconButton(
//                           onPressed: () {},
//                           icon: Image.network(
//                             'https://cdn-icons-png.flaticon.com/128/7446/7446778.png',
//                             width: 20,
//                             height: 20,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                       const SizedBox(width: 5),
//                       CircleAvatar(
//                         backgroundColor: const Color.fromARGB(255, 30, 30, 30),
//                         radius: 25,
//                         child: IconButton(
//                           onPressed: () {},
//                           icon: Image.network(
//                             'https://cdn-icons-png.flaticon.com/128/58/58801.png',
//                             width: 20,
//                             height: 20,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 )
//               ],
//             ),
//             Container(
//               padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
//               child: const Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Flexible(
//                     child: Text(
//                       'Сериалы на основе ваших интересов',
//                       style: textB,
//                     ),
//                   ),
//                   Text(
//                     'Все',
//                     style: textO,
//                   )
//                 ],
//               ),
//             ),
//             // Obx(
//             //   () => SizedBox(
//             //     width: 100,
//             //     child: ListView.builder(
//             //       scrollDirection: Axis.horizontal,
//             //       shrinkWrap: true,
//             //       itemCount: controller.movies.length,
//             //       itemBuilder: (context, index) {
//             //         final mov = controller.movies[index];
//             //         return ListTile(
//             //           title: Text(mov.name),
//             //         );
//             //       },
//             //     ),
//             //   ),
//             // )
//             // Obx(
//             //   () => controller.films.when(
//             //     loading: () => const Text("Status:loading"),
//             //     success: (List<Films> list) => ListView.builder(
//             //       itemBuilder: (BuildContext context, int index) {
//             //         var films = list[index];
//             //         return ListTile(
//             //           title: Text(films.name),
//             //         );
//             //       },
//             //     ),
//             //     failed: (message, error) => Column(
//             //       children: [
//             //         const Text("Status error"),
//             //         Text(message),
//             //       ],
//             //     ),
//             //   ),
//             // )
//           ],
//         ),
//       ),
//     );
//   }
// }
