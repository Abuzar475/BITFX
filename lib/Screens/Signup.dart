import 'package:bitfx/Screens/Login.dart';
import 'package:bitfx/Screens/getx.dart';
import 'package:bitfx/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var widht = MediaQuery.of(context).size.width;
    print('widht : $widht height $height');

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width,
              child: Container(
                decoration: BoxDecoration(
                    color: kmain,
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
    );
  }

  Widget _buildlogo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Welcome to BITFX',
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.height / 25,
            fontWeight: FontWeight.bold,
            color: litgrey,
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

  Widget _buildpasswordRow1() {
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
            labelText: ('Confirm Password'),
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
            child: Text(
              "Already have an account? Log In",
              style: TextStyle(
                  fontSize: 12, fontWeight: FontWeight.bold, color: kmain),
            ),
          ),
        ],
      ),
    );
  }

  Widget _LogInbutton(context) {
    return ElevatedButton(
      onPressed: () {
        Get.to(Login());
      },
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      child: Ink(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [kmain, drkgrey]),
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
        Get.to(MainScreen());
      },
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      child: Ink(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [kmain, drkgrey]),
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

  // Widget _passwordbutton() {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.start,
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: <Widget>[
  //       FlatButton(
  //         onPressed: () {},
  //         child: Text('Forget Password'),
  //       ),
  //     ],
  //   );
  // }

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
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.6,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(color: drkgrey),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Sign up Into your Account',
                      style: TextStyle(
                        color: kmain,
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.height / 35,
                      ),
                    )
                  ],
                ),
                _buildemail(),
                _buildpasswordRow(),
                _buildpasswordRow1(),
                _SignUpbutton(context),
                _box(),
                _LogInbutton(
                  context,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
