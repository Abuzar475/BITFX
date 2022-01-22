import 'package:bitfx/Screens/color.dart';
import 'package:flutter/material.dart';

class FxCalculator extends StatefulWidget {
  const FxCalculator({Key? key}) : super(key: key);

  @override
  _FxCalculatorState createState() => _FxCalculatorState();
}

class _FxCalculatorState extends State<FxCalculator> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: drkgrey,
            title: Center(
                child: Text(
              "FX Calculator",
              style: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.bold, color: kmain),
            )),
          ),
          body: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomCenter,
                colors: [
                  kmain,
                  Colors.black,
                ],
              )),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildcard(context),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01),
                      buildcard1(context),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01),
                      buildcard2(context),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01),
                      buildcard3(context),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01),
                      buildcard4(context),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.1),
                      _CalculateButton(context),
                    ],
                  ),
                ),
              ))),
    );
  }
}

Widget buildcard(context) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.8,
    height: MediaQuery.of(context).size.height * 0.1,
    child: FittedBox(
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: kmain,
          elevation: 4.0,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.attach_money_outlined,
                  size: 30,
                ),
                Text('Account Balance',
                    style: TextStyle(
                        fontSize: 20.0,
                        height: 1.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w500)),
                SizedBox(width: 40),
                Row(
                  children: [
                    Container(
                        width: 70.0,
                        height: 10,
                        child: TextField(
                            cursorColor: Colors.black,
                            style: TextStyle(
                                fontSize: 20.0,
                                height: 1.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w500)))
                  ],
                ),
              ],
            ),
          )),
    ),
  );
}

Widget buildcard1(context) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.8,
    height: MediaQuery.of(context).size.height * 0.1,
    child: FittedBox(
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: kmain,
          elevation: 4.0,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.paid_sharp,
                  size: 30,
                ),
                Text('Currency Pair      ',
                    style: TextStyle(
                        fontSize: 20.0,
                        height: 1.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w500)),
                SizedBox(width: 40),
                Row(
                  children: [
                    Container(
                        width: 70.0,
                        height: 10,
                        child: TextField(
                            cursorColor: Colors.black,
                            style: TextStyle(
                                fontSize: 20.0,
                                height: 1.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w500)))
                  ],
                ),
              ],
            ),
          )),
    ),
  );
}

Widget buildcard2(context) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.8,
    height: MediaQuery.of(context).size.height * 0.1,
    child: FittedBox(
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: kmain,
          elevation: 4.0,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.pie_chart,
                  size: 30,
                ),
                Text('Risk %                  \ ',
                    style: TextStyle(
                        fontSize: 20.0,
                        height: 1.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w500)),
                SizedBox(width: 40),
                Row(
                  children: [
                    Container(
                        width: 70.0,
                        height: 10,
                        child: TextField(
                            cursorColor: Colors.black,
                            style: TextStyle(
                                fontSize: 20.0,
                                height: 1.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w500)))
                  ],
                ),
              ],
            ),
          )),
    ),
  );
}

Widget buildcard3(context) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.8,
    height: MediaQuery.of(context).size.height * 0.1,
    child: FittedBox(
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: kmain,
          elevation: 4.0,
          child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.circle_outlined,
                      size: 30,
                    ),
                    Text('Stop loss                      ',
                        style: TextStyle(
                            fontSize: 20.0,
                            height: 1.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w500)),
                    Row(
                      children: [
                        Container(
                            width: 70.0,
                            height: 10,
                            child: TextField(
                                cursorColor: Colors.black,
                                style: TextStyle(
                                    fontSize: 20.0,
                                    height: 1.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500)))
                      ],
                    )
                  ]))),
    ),
  );
}

Widget buildcard4(context) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.8,
    height: MediaQuery.of(context).size.height * 0.1,
    child: FittedBox(
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: kmain,
          elevation: 4.0,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.location_searching_sharp,
                  size: 30,
                ),
                Text('''Lot Size                  \  ''',
                    style: TextStyle(
                        fontSize: 20.0,
                        height: 1.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w500)),
                SizedBox(width: 40),
                Row(
                  children: [
                    Text('Result',
                        style: TextStyle(
                            fontSize: 20.0,
                            height: 1.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w500))
                  ],
                ),
              ],
            ),
          )),
    ),
  );
}

Widget _CalculateButton(context) {
  return ElevatedButton(
    onPressed: () {
      //TO-DO
    },
    style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
    child: Ink(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [kmain, drkgrey]),
          borderRadius: BorderRadius.circular(20)),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.1,
        width: MediaQuery.of(context).size.width * 0.7,
        alignment: Alignment.center,
        child: Text(
          'Calculate',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    ),
  );
}
