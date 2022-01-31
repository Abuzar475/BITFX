import 'package:bitfx/Screens/Profile_page.dart';
import 'package:bitfx/Screens/color.dart';
import 'package:bitfx/Screens/course_screen.dart';
import 'package:bitfx/Screens/eCalendar.dart';
import 'package:bitfx/Screens/fx_calculator.dart';
import 'package:bitfx/Screens/signal_Screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  final NavController navController = Get.put(NavController());

  final List<Widget> bodyContent = [
    SignalScreen(),
    CoursesScreen(),
    FxCalculator(),
    Ecalendar(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text("getxNav"),
        // ),
        body: Obx(
          () => Center(
            child: bodyContent.elementAt(navController.selectedIndex),
          ),
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
              canvasColor: maingry,
              primaryColor: kmain,
              textTheme: Theme.of(context)
                  .textTheme
                  .copyWith(caption: new TextStyle(color: Colors.white))),
          child: Obx(
            () => BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                  activeIcon: ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return RadialGradient(
                        center: Alignment.topLeft,
                        radius: 0.5,
                        colors: <Color>[kmain, maingry],
                        tileMode: TileMode.repeated,
                      ).createShader(bounds);
                    },
                    child: Icon(Icons.signal_cellular_alt_sharp),
                  ),
                  icon: new Icon(Icons.signal_cellular_alt_sharp, color: kmain),
                  label: 'Signals',
                ),
                BottomNavigationBarItem(
                  activeIcon: ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return RadialGradient(
                        center: Alignment.topLeft,
                        radius: 0.5,
                        colors: <Color>[kmain, maingry],
                        tileMode: TileMode.repeated,
                      ).createShader(bounds);
                    },
                    child: Icon(Icons.book_outlined),
                  ),
                  icon: new Icon(Icons.book_outlined, color: kmain),
                  label: 'Courses',
                ),
                BottomNavigationBarItem(
                  activeIcon: ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return RadialGradient(
                        center: Alignment.topLeft,
                        radius: 0.5,
                        colors: <Color>[kmain, maingry],
                        tileMode: TileMode.repeated,
                      ).createShader(bounds);
                    },
                    child: Icon(Icons.calculate_outlined),
                  ),
                  icon: new Icon(Icons.calculate_outlined, color: kmain),
                  label: 'FX Calculator',
                ),
                BottomNavigationBarItem(
                  activeIcon: ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return RadialGradient(
                        center: Alignment.topLeft,
                        radius: 0.5,
                        colors: <Color>[kmain, maingry],
                        tileMode: TileMode.repeated,
                      ).createShader(bounds);
                    },
                    child: Icon(Icons.calendar_today),
                  ),
                  icon: new Icon(Icons.calendar_today, color: kmain),
                  label: 'Economic Calender',
                ),
                BottomNavigationBarItem(
                  activeIcon: ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return RadialGradient(
                        center: Alignment.topLeft,
                        radius: 0.5,
                        colors: <Color>[kmain, maingry],
                        tileMode: TileMode.repeated,
                      ).createShader(bounds);
                    },
                    child: Icon(Icons.supervised_user_circle_outlined),
                  ),
                  icon: new Icon(Icons.supervised_user_circle_outlined,
                      color: kmain),
                  label: 'Profile',
                ),
              ],
              currentIndex: navController.selectedIndex,
              onTap: (index) => navController.selectedIndex = index,
            ),
          ),
        ));
  }
}

class NavController extends GetxController {
  var _selectedIndex = 0.obs;

  get selectedIndex => _selectedIndex.value;
  set selectedIndex(index) => _selectedIndex.value = index;
}

// class LinearGradientMask extends StatelessWidget {
//   LinearGradientMask({this.child});
//   final Widget child;

//   @override
//   Widget build(BuildContext context) {
//     return ShaderMask(
//       shaderCallback: (bounds) {
//         return RadialGradient(
//           center: Alignment.topLeft,
//           radius: 1,
//           colors: [Colors.blue, Colors.red],
//           tileMode: TileMode.mirror,
//         ).createShader(bounds);
//       },
//       child: child,
//     );
//   }
// }
