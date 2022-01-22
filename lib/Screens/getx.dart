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
              canvasColor: litgrey,
              primaryColor: kmain,
              textTheme: Theme.of(context)
                  .textTheme
                  .copyWith(caption: new TextStyle(color: Colors.white))),
          child: Obx(
            () => BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.alarm),
                  label: "Signals",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.web_stories),
                  label: "Courses",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.calculate_outlined),
                  label: "Fx Calculator",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_today_outlined),
                  label: "Economic calendar",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.supervised_user_circle_rounded),
                  label: "Profile",
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
