import 'package:bitfx/Screens/Signup.dart';
import 'package:bitfx/Screens/color.dart';

import 'package:bitfx/Screens/getx.dart';
import 'package:bitfx/main.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var widht = MediaQuery.of(context).size.width;

    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: secondgry,
        child: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Container(
                decoration: BoxDecoration(
                    color: secondgry,
                    borderRadius: BorderRadius.only(
                      bottomLeft: const Radius.circular(70),
                      bottomRight: const Radius.circular(70),
                    )),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[_buildlogo(), _buildContainer()],
            )
          ],
        ),
      ),
    ));
  }

  Widget _buildlogo() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image(
          image: AssetImage('assets/bitfx.png'),
          // width: MediaQuery.of(context).size.width * 0.3,
          // height: MediaQuery.of(context).size.height * 0.3,
          width: 300,
          height: 200,
        ),
        Text(
          'LOG INTO BITFX',
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.height / 25,
            fontWeight: FontWeight.bold,
            color: kmain,
          ),
        )
      ],
    );
  }

  Widget _buildpasswordRow() {
    String password;
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextField(
        style: TextStyle(color: kmain),
        keyboardType: TextInputType.text,
        obscureText: true,
        onChanged: (value) {
          setState(() {
            password = value;
          });
        },
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.lock,
              color: kmain,
            ),
            labelText: ('Password'),
            labelStyle: TextStyle(
              color: kmain,
            )),
      ),
    );
  }

  Widget _box() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            // height: 1.4 * (MediaQuery.of(context).size.height / 20),
            // width: 5 * (MediaQuery.of(context).size.width / 10),
            child: Row(
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(
                      fontSize: 12, fontWeight: FontWeight.bold, color: kmain),
                ),
                TextButton(
                  onPressed: () {
                    Get.to(SignupScreen());
                  },
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        color: kmain),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _passwordbutton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        TextButton(
          onPressed: () {
            //TODO
          },
          child: Text(
            'Forget Password',
            style: TextStyle(
                fontSize: 12, fontWeight: FontWeight.bold, color: kmain),
          ),
        ),
      ],
    );
  }

  Widget _buildemail() {
    String email;
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextField(
        style: TextStyle(color: kmain),
        keyboardType: TextInputType.emailAddress,
        onChanged: (value) {
          setState(() {
            email = value;
          });
        },
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.email,
              color: kmain,
            ),
            labelText: ('Email'),
            labelStyle: TextStyle(
              color: kmain,
            )),
      ),
    );
  }

  Widget _buildContainer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ClipRRect(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 3.0),
              color: secondgry,
              boxShadow: [
                BoxShadow(
                    color: kmain.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 2.0,
                    offset: Offset(2.0, 2.0),
                    blurStyle: BlurStyle.outer),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                _buildemail(),
                _buildpasswordRow(),
                _passwordbutton(),
                SizedBox(
                  height: 10,
                ),
                _LogInbutton(context),
                _box(),
                // _SignUpbutton(context),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

Widget _LogInbutton(context) {
  return ElevatedButton(
    onPressed: () {
      Get.to(MainScreen());
    },
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
          'Log In',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    ),
  );
}

Widget _SignUpbutton(context) {
  return ElevatedButton(
    onPressed: () {
      Get.to(SignupScreen());
    },
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
          'Sign Up',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    ),
  );
}
