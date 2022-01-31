import 'package:bitfx/Screens/color.dart';
import 'package:bitfx/Screens/payment_Screen.dart';
import 'package:bitfx/main.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignalScreen extends StatefulWidget {
  const SignalScreen({Key? key}) : super(key: key);

  @override
  _SignalScreenState createState() => _SignalScreenState();
}

class _SignalScreenState extends State<SignalScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Center(
                child: Text(
              "Signals",
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
                Colors.black,
              ],
            )),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 30),
                  Container(
                      height: MediaQuery.of(context).size.height * 0.3,
                      width: MediaQuery.of(context).size.width * 0.97,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            _cardmain(context, 'b5.jpeg'),
                            _cardmain(context, 'b1.jpeg'),
                            _cardmain(context, 'b3.jpeg'),
                            _cardmain(context, 'b4.jpeg'),
                            _cardmain(context, 'b2.jpeg'),
                          ],
                        ),
                      )),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.3),
                  // build(context),
                  _button(context),
                ],
              ),
            ),
          )),
    );
  }
}

Widget _cardmain(BuildContext context, String image) {
  return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: secondgry,
      elevation: 4.0,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.3,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("$image"),
              fit: BoxFit.fill,
              alignment: Alignment.topCenter,
            ),
          ),
          child: Center(
              child: Icon(
            Icons.lock,
            size: 70,
            color: Colors.grey[400],
          )),
        ),
      ));
}

Widget button(context) {
  return SizedBox(
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.width * 0.7,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: kmain,
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              padding: EdgeInsets.all(20)),
          onPressed: () {
            // Get.to(PaymentScreen());
          },
          child: Text("Get Access",
              style: TextStyle(
                  fontSize: 20.0,
                  height: 1.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w500))));
}

Widget _button(context) {
  return ElevatedButton(
    onPressed: () {
      Get.to(PaymentScreen());
    },
    style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
    child: Ink(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [kmain, maingry]),
          borderRadius: BorderRadius.circular(20)),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.1,
        width: MediaQuery.of(context).size.width * 0.7,
        alignment: Alignment.center,
        child: Text(
          'Get Access',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    ),
  );
}
