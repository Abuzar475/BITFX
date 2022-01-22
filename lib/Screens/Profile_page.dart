import 'package:bitfx/Screens/color.dart';
import 'package:bitfx/Screens/form_submission.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomCenter,
          colors: [
            Colors.black,
            kmain,
          ],
        )),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'My Account',
                  style: TextStyle(
                      fontSize: 30, color: kmain, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              circleimage(context),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              supportIcon(context),
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              logoutButton(context),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            ],
          ),
        ),
      )),
    );
  }
}

Widget circleimage(context) {
  return SizedBox(
    height: MediaQuery.of(context).size.width * 0.4,
    width: MediaQuery.of(context).size.height * 0.4,
    // height: 300,
    // width: 200,
    child: Stack(
      clipBehavior: Clip.none,
      fit: StackFit.expand,
      children: [
        CircleAvatar(
            //  backgroundImage: AssetImage(""),
            ),
        Positioned(
            bottom: MediaQuery.of(context).size.width * 0,
            right: MediaQuery.of(context).size.height * 0.1,
            // bottom: 0,
            // right: -25,
            child: RawMaterialButton(
              onPressed: () {},
              elevation: 2.0,
              fillColor: Color(0xFFF5F6F9),
              child: Icon(
                Icons.camera_alt_outlined,
                color: Colors.blue,
              ),
              padding: EdgeInsets.all(15.0),
              shape: CircleBorder(),
            )),
      ],
    ),
  );
}

Widget logoutButton(BuildContext context) {
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
          'Log Out',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    ),
  );
}

Widget supportIcon(context) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.3,
    width: MediaQuery.of(context).size.width * 0.97,
    child: FittedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                IconButton(
                    iconSize: 40,
                    tooltip: 'Follow us on',
                    onPressed: () => {},
                    icon: Icon(Icons.facebook),
                    color: kmain),
                Text('Follow us on', style: TextStyle(color: kmain)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                IconButton(
                    iconSize: 40,
                    tooltip: 'Messages',
                    onPressed: () => {
                          //TODO
                        },
                    icon: Icon(Icons.message_outlined),
                    color: kmain),
                Text(
                  'Messages',
                  style: TextStyle(color: kmain),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                IconButton(
                    iconSize: 40,
                    tooltip: 'Rate Us',
                    onPressed: () => {
                          //TODO
                        },
                    icon: Icon(Icons.verified_user_outlined),
                    color: kmain),
                Text(
                  'Rate us',
                  style: TextStyle(color: kmain),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                IconButton(
                    iconSize: 40,
                    tooltip: 'Support',
                    onPressed: () => {
                          Get.to(FormSubmission()),
                        },
                    icon: Icon(Icons.account_box_outlined),
                    color: kmain),
                Text(
                  'Support',
                  style: TextStyle(color: kmain),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
