import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// class InitPage extends StatefulWidget {
//   const InitPage({super.key});
//   @override
//   State<InitPage> createState() => _InitPageState();
// }

// class _InitPageState extends State<InitPage>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       vsync: this,
//       duration: const Duration(seconds: 5),
//     )..repeat();
//   }

//   // @override
//   // Widget build(BuildContext context) {
//   //   return Scaffold(
//   //     backgroundColor: Colors.black,
//   //     body: Center(
//   //       child: AnimatedBuilder(
//   //         animation: _controller,
//   //         builder: (context, child) {
//   //           return CustomPaint(
//   //             size: const Size(200, 200),
//   //             painter: LoadingPainter(
//   //               progress: _controller.value,
//   //               stripeCount: 50,
//   //             ),
//   //           );
//   //         },
//   //       ),
//   //     ),
//   //   );
//   // }
//   @override
//   Widget build(BuildContext context) {
//     String svgString = '''
//     <svg viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg">
//       <path d="M3.6111 0.357512V5.82496L7.37527 0.357512H11.7579L5.39166 6.76497L17.0153 0.357512V4.42574L6.5787 8.29056L17.0153 7.32589V11.1907L6.5787 10.226L17.0153 14.0909V18.1591L5.39166 11.7516L11.7579 18.1591H7.37214L3.60798 12.6916V18.1591H0V0.357512H3.6111Z" fill="black"/>
//     </svg>
//     ''';
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const SizedBox(height: 200),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 SvgPicture.string(
//                   svgString,
//                   height: 33,
//                   width: 33,
//                   color: Colors.white,
//                 ),
//                 const Text(
//                   'ИНОПОИСК',
//                   style: TextStyle(
//                     fontSize: 40,
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 200),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 const Text(
//                   'Яндекс',
//                   style: TextStyle(
//                     fontSize: 30,
//                     color: Colors.white,
//                   ),
//                 ),
//                 const SizedBox(width: 5),
//                 Image.network(
//                   'https://yastat.net/s3/plus/landing/2024/icons/plus/favicon-32x32.png',
//                 ),
//                 const SizedBox(width: 5),
//                 const Text(
//                   'Плюс',
//                   style: TextStyle(
//                     fontSize: 30,
//                     color: Colors.white,
//                   ),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
// }

// class LoadingPainter extends CustomPainter {
//   final double progress;
//   final int stripeCount;
//   final Color stripeColor;

//   LoadingPainter({
//     required this.progress,
//     this.stripeCount = 50,
//     this.stripeColor = Colors.white,
//   });

//   @override
//   void paint(Canvas canvas, Size size) {
//     final Paint paint = Paint()..color = stripeColor;
//     final double spaceBetweenStripes = size.width / stripeCount;

//     for (int i = 0; i < stripeCount; i++) {
//       final double x = i * spaceBetweenStripes;
//       final double stripeHeight = math.sin(progress * math.pi * 2 + x) * 20;

//       canvas.drawRect(
//         Rect.fromLTWH(
//           x,
//           (size.height - stripeHeight) / 2,
//           spaceBetweenStripes,
//           stripeHeight,
//         ),
//         paint,
//       );
//     }
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
// }

class InitPage extends StatefulWidget {
  const InitPage({super.key});
  @override
  State<InitPage> createState() => _InitPageState();
}

class _InitPageState extends State<InitPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    )..repeat();
    _animation = Tween<double>(begin: 0, end: 0.2).animate(CurvedAnimation(parent: _controller, curve: Curves.slowMiddle));
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     backgroundColor: Colors.black,
  //     body: Center(
  //       child: AnimatedBuilder(
  //         animation: _controller,
  //         builder: (context, child) {
  //           return CustomPaint(
  //             size: const Size(200, 200),
  //             painter: LoadingPainter(
  //               progress: _controller.value,
  //               stripeCount: 50,
  //             ),
  //           );
  //         },
  //       ),
  //     ),
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    String svgString = '''
    <svg viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg">
      <path d="M3.6111 0.357512V5.82496L7.37527 0.357512H11.7579L5.39166 6.76497L17.0153 0.357512V4.42574L6.5787 8.29056L17.0153 7.32589V11.1907L6.5787 10.226L17.0153 14.0909V18.1591L5.39166 11.7516L11.7579 18.1591H7.37214L3.60798 12.6916V18.1591H0V0.357512H3.6111Z" fill="black"/>
    </svg>
    ''';
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            // return CustomPaint(
            //   size: const Size(50, 50),
            //   painter: LoadingPainter(
            //     progress: _controller.value,
            //     stripeCount: 50,
            //   ),
            // );
            return Stack(
              children: [
                _buildAnimatedStripes(),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 270),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.string(
                            svgString,
                            height: 33,
                            width: 33,
                            color: Colors.white,
                          ),
                          const Text(
                            'ИНОПОИСК',
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 250),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Яндекс',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 5),
                          Image.network(
                            'https://yastat.net/s3/plus/landing/2024/icons/plus/favicon-32x32.png',
                          ),
                          const SizedBox(width: 5),
                          const Text(
                            'Плюс',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  _buildAnimatedStripes() {
    return Positioned.fill(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Stack(
            children: List.generate(
              50,
              (index) {
                final double spiralProgress =
                    index / 50.0; 
                final double rotation =
                    2 * math.pi * spiralProgress; 
                final double radius =
                    constraints.maxHeight / 3;
                final double x = radius * math.cos(rotation);
                final double y = radius * math.sin(rotation);
                return Positioned(
                  left: constraints.maxWidth / 2 + x - 2,
                  top: constraints.maxHeight / 2 + y - 10,
                  child: Container(
                    width: 2,
                    // margin: const EdgeInsets.only(top: 10, bottom: 10),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.blue.withOpacity(0.5),
                          Colors.green.withOpacity(0.5),
                          Colors.yellow.withOpacity(0.5),
                          Colors.red.withOpacity(0.5),
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                    height: constraints.maxHeight * _animation.value,
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
