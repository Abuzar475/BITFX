import 'package:bitfx/Screens/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Center(
                child: Text(
              "Signals",
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
                  drkgrey,
                ],
              )),
              width: width,
              height: height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _card1(context, 'Basic Learn', '299 \$'),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  _card1(context, 'Interactive Learn', '499 \$'),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  _card1(context, 'Learn and earn', '749 \$'),
                ],
              ))),
    );
  }
}

Widget _card1(context, String name, String price) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.8,
    height: MediaQuery.of(context).size.height * 0.12,
    decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomCenter,
          colors: [
            kmain,
            Colors.black,
          ],
        ),
        borderRadius: BorderRadius.circular(20)),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: FittedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              '$name',
              overflow: TextOverflow.fade,
              style: TextStyle(
                  color: kmain,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  height: 1.0),
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
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.width * 0.3,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: kmain,
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              padding: EdgeInsets.all(20)),
          onPressed: () {
            //TO-DO
          },
          child: Text("$price",
              style: TextStyle(
                  fontSize: 30.0,
                  height: 1.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w500))));
}
