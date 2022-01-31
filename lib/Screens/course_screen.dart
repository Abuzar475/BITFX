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
            backgroundColor: maingry,
            automaticallyImplyLeading: false,
          ),
          body: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomCenter,
                colors: [
                  kmain,
                  maingry,
                ],
              )),
              width: width,
              height: height,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _card1(context, 'a1.jpg', '749 \$'),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    _card1(context, 'a3.jpg', '499 \$'),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    _card1(context, 'a2.jpg', '299 \$'),
                  ],
                ),
              ))),
    );
  }
}

Widget _card1(context, String image, String price) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.9,
    height: MediaQuery.of(context).size.height * 0.5,
    decoration: BoxDecoration(
      color: maingry,
      borderRadius: BorderRadius.circular(20),
    ),
    child: FittedBox(
      child: Padding(
        padding: const EdgeInsets.only(top: 5, bottom: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
              fit: BoxFit.fitWidth,
              image: AssetImage(
                '$image',
              ),
              // width: MediaQuery.of(context).size.width * 0.9,
              // height: MediaQuery.of(context).size.height * 0.5,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            _LogInbutton(context, '$price'),
          ],
        ),
      ),
    ),
  );
}

Widget button(context, String price) {
  return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      width: MediaQuery.of(context).size.width * 0.7,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: maingry,
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

Widget _LogInbutton(context, String price) {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
    child: Ink(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [kmain, maingry]),
          borderRadius: BorderRadius.circular(20)),
      child: Container(
        height: 1.4 * (MediaQuery.of(context).size.height / 20),
        width: 5 * (MediaQuery.of(context).size.width / 10),
        alignment: Alignment.center,
        child: Text(
          '$price',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    ),
  );
}
