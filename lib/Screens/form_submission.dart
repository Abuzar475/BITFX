import 'package:bitfx/Screens/color.dart';
import 'package:flutter/material.dart';

class FormSubmission extends StatefulWidget {
  const FormSubmission({Key? key}) : super(key: key);

  @override
  _FormSubmissionState createState() => _FormSubmissionState();
}

class _FormSubmissionState extends State<FormSubmission> {
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
                    SizedBox(
                      height: MediaQuery.of(context).size.width * 0.2,
                    ),
                    namefield(context),
                    emailfield(context),
                    messageForm(context),
                    SizedBox(
                      height: MediaQuery.of(context).size.width * 0.2,
                    ),
                    _SubmitButton(context),
                  ],
                ),
              ))),
    );
  }
}

Widget namefield(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        child: TextFormField(
          style: TextStyle(
              color: kmain, fontSize: 25, fontWeight: FontWeight.w300),
          initialValue: '',
          maxLength: 20,
          decoration: InputDecoration(
            labelText: 'Name',
            labelStyle: TextStyle(
                color: kmain, fontSize: 20, fontWeight: FontWeight.w600),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: kmain),
            ),
          ),
        )),
  );
}

Widget emailfield(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        child: TextFormField(
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(
              color: kmain, fontSize: 25, fontWeight: FontWeight.w300),
          initialValue: '',
          maxLength: 20,
          decoration: InputDecoration(
            labelText: 'Email',
            labelStyle: TextStyle(
                color: kmain, fontSize: 20, fontWeight: FontWeight.w600),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: kmain),
            ),
          ),
        )),
  );
}

Widget messageForm(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        height: MediaQuery.of(context).size.height * 0.3,
        child: TextField(
          textAlignVertical: TextAlignVertical.top,
          style: TextStyle(
              color: kmain, fontSize: 25, fontWeight: FontWeight.w300),
          maxLength: 100,
          maxLines: 10,
          decoration: InputDecoration(
            labelText: 'Message',
            labelStyle: TextStyle(
                color: kmain, fontSize: 20, fontWeight: FontWeight.w600),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: kmain),
            ),
          ),
        )),
  );
}

Widget _SubmitButton(context) {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
    child: Ink(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [kmain, drkgrey]),
          borderRadius: BorderRadius.circular(20)),
      child: Container(
        height: 1.4 * (MediaQuery.of(context).size.height / 20),
        width: 5 * (MediaQuery.of(context).size.width / 10),
        alignment: Alignment.center,
        child: Text(
          'Submit',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    ),
  );
}
