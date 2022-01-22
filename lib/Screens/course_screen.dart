import 'package:bitfx/Screens/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CoursesScreen extends StatefulWidget {
  const CoursesScreen({Key? key}) : super(key: key);

  @override
  _CoursesScreenState createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<CoursesScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Center(
                child: Text(
              "Courses",
              style: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.bold, color: kmain),
            )),
            backgroundColor: drkgrey,
          ),
          body: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomCenter,
                colors: [
                  kmain,
                  Colors.black,
                ],
              )),
              width: width,
              height: height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _card1(context, 'assets/a3.png', '299 \$'),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  _card1(context, 'assets/a2.png', '499 \$'),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  _card1(context, 'assets/a1.png', '749 \$'),
                ],
              ))),
    );
  }
}

Widget _card1(context, String image1, String price) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.8,
    height: MediaQuery.of(context).size.height * 0.2,
    decoration:
        BoxDecoration(color: kmain, borderRadius: BorderRadius.circular(20)),
    child: FittedBox(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
              image: AssetImage('$image1'),
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 0.3,
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.2),
            button(context, '$price'),
          ],
        ),
      ),
    ),
  );
}

Widget button(context, String price) {
  return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      width: MediaQuery.of(context).size.width * 0.4,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: drkgrey,
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              padding: EdgeInsets.all(20)),
          onPressed: () {
            //TO-DO
          },
          child: Center(
            child: Text("$price",
                style: TextStyle(
                    fontSize: 30.0,
                    height: 1.0,
                    color: kmain,
                    fontWeight: FontWeight.w500)),
          )));
}
