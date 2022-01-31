import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:bitfx/Screens/Login.dart';
import 'package:bitfx/Screens/color.dart';
import 'package:bitfx/Screens/course_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'BIT FX',
        theme: ThemeData(
          primarySwatch: Colors.cyan,
        ),
        home: AnimatedSplashScreen(
          duration: 500,
          splash: Image(
            image: AssetImage('assets/bitfx.png'),
          ),
          nextScreen: Login(),
          splashTransition: SplashTransition.slideTransition,
          //  pageTransitionType: PageTransitionType.scale,
          backgroundColor: maingry,
          splashIconSize: 400,
        ));
  }
}


// void main() {
//   runApp(GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(primarySwatch: Colors.cyan),
//       home: MyApp()));
// }

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   void initState() {
//     super.initState();
//     Future.delayed(Duration(seconds: 3), () {
//       Get.to(Login());
//     });
//   }

//   Widget build(BuildContext context) {
//     double customOpacity = 0;
//     return Scaffold(
//       body: Container(
//         color: drkgrey,
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   TweenAnimationBuilder(
//                       onEnd: () {
//                         setState(() {
//                           customOpacity = 1;
//                         });
//                       },
//                       curve: Curves.bounceOut,
//                       duration: Duration(seconds: 2),
//                       tween: Tween<double>(begin: 30, end: 100),
//                       builder: (context, dynamic value, child) {
//                         return Image(
//                           image: AssetImage('bitfx.png'),
//                         );
//                       })
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }