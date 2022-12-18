// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:groceries_app/components/InputWidget.dart';
import 'package:groceries_app/components/TextWidget.dart';
import 'package:groceries_app/components/button.dart';
import 'package:groceries_app/screens/home_screen.dart';
import 'package:groceries_app/screens/login.dart';
import 'package:groceries_app/screens/welcome.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  // gotoHome
  void register() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            // top icon image widget!
            Container(
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/image/carrot.png"),
                ),
              ),
              child: Container(
                padding: EdgeInsets.only(left: 5),
                margin: EdgeInsets.only(top: 40),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        child: Icon(
                          Icons.chevron_left,
                          size: 30,
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WelcomeScreen()),
                          );
                        },
                      )
                    ]),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // logging text widget
                  TextWidget(
                    text: "Register",
                    fontweight: FontWeight.bold,
                  ),
                  SizedBox(height: 10),
                  TextWidget(
                    text: "Enter your emails and password",
                    color: Colors.grey,
                    fontsize: 14,
                  ),

                  // email and password widget!!
                  Container(
                    margin: EdgeInsets.only(top: 35, bottom: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget(
                          text: "Username",
                          fontsize: 16,
                          fontweight: FontWeight.bold,
                        ),
                        InputWidget(hint: "Enter your name!"),
                        SizedBox(height: 20),
                        TextWidget(
                          text: "Email",
                          fontsize: 16,
                          fontweight: FontWeight.bold,
                        ),
                        InputWidget(hint: "Enter your email!"),
                        SizedBox(height: 20),
                        TextWidget(
                          text: "Password",
                          fontsize: 16,
                          fontweight: FontWeight.bold,
                        ),
                        InputWidget(hint: "Enter your password!"),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // forgot password widget!
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextWidget(
                    text: "Forgot Password?",
                    color: Colors.green,
                    fontsize: 16,
                    fontweight: FontWeight.bold,
                  ),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.only(left: 15, right: 15),
              margin: EdgeInsets.only(top: 25, bottom: 15),
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 45,
                    child: ReuseableButton(
                      text: "Login",
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      onPressed: register,
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextWidget(
                        text: "Don't have an Account ?",
                        fontsize: 14,
                        fontweight: FontWeight.bold,
                      ),
                      SizedBox(width: 10),
                      InkWell(
                        child: TextWidget(
                          text: "Signup here!",
                          color: Colors.green,
                          fontsize: 13,
                          fontweight: FontWeight.bold,
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Login()),
                          );
                        },
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
