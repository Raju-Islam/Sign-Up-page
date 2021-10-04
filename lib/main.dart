import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final darkText = Color(0xff060404);
  final lightText = Color(0xff898584);
  final bluelightText = Color(0xff1D79C1);

  Widget getTextField({required String hint}) {
    return TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.transparent, width: 0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.transparent, width: 0),
            ),
            fillColor: Colors.grey.shade200,
            contentPadding: EdgeInsets.all(20),
            filled: true,
            hintText: hint,
            hintStyle: TextStyle(color: Colors.black54)));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 30, top: 20, right: 20),
            height: size.height,
            width: size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sign Up to Masterminds",
                  style: TextStyle(
                      color: darkText,
                      fontSize: 19,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 7,
                ),
                Wrap(
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(fontSize: 14, color: lightText),
                    ),
                    Text("Login",
                        style: TextStyle(
                            color: Colors.blue.shade700,
                            fontWeight: FontWeight.w700))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                getTextField(hint: "First Name"),
                SizedBox(
                  height: 20,
                ),
                getTextField(hint: "E-mail"),
                SizedBox(
                  height: 20,
                ),
                getTextField(hint: "Password"),
                SizedBox(
                  height: 20,
                ),
                getTextField(hint: "Confirm Password"),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Create Account",
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(bluelightText),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(vertical: 16))),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Expanded(child: Divider(color: lightText)),
                    Text(
                      "or sign up via",
                      style: TextStyle(color: lightText),
                    ),
                    Expanded(child: Divider(color: lightText)),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          "asset/google1.png",
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Google",
                          style: TextStyle(
                              color: darkText,
                              fontWeight: FontWeight.w800,
                              fontSize: 17),
                        ),
                      ],
                    ),
                    style: ButtonStyle(
                        side: MaterialStateProperty.all(
                            BorderSide(color: lightText)),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(vertical: 10))),
                  ),
                ),
                SizedBox(height: 16,),
                Wrap(
                  children: [
                    Text(
                      "By signing up to Masterminds you agree to our",
                      style: TextStyle(fontSize: 14, color: lightText),
                    ),
                    SizedBox(height: 20,),
                    Text("trams and conditions",
                        style: TextStyle(
                            color: Colors.blue.shade700,
                            fontWeight: FontWeight.w700))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
