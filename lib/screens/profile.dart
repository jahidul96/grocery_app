// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:groceries_app/components/TextWidget.dart';
import 'package:groceries_app/components/myProfile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 60),
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: MyProfileComp()),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  ProfileMultipleComp(
                    text: "Orders",
                    icon: Icons.shopping_bag,
                    topBorder: true,
                  ),
                  ProfileMultipleComp(
                    text: "MyDetails",
                    icon: Icons.account_balance_outlined,
                    topBorder: false,
                  ),
                  ProfileMultipleComp(
                    text: "Addres",
                    icon: Icons.map_rounded,
                    topBorder: false,
                  ),
                  ProfileMultipleComp(
                    text: "Notifications",
                    icon: Icons.notification_add,
                    topBorder: false,
                  ),
                  ProfileMultipleComp(
                    text: "About",
                    icon: Icons.details_outlined,
                    topBorder: false,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 70,
        alignment: Alignment.center,
        padding: EdgeInsets.only(left: 15, right: 15),
        child: MaterialButton(
            minWidth: double.infinity,
            height: 50,
            color: Colors.green,
            onPressed: () {},
            child: TextWidget(
              text: "Logout",
              fontweight: FontWeight.bold,
              fontsize: 17,
              color: Colors.white,
            )),
      ),
    );
  }
}

// ProfileMultipleComp
class ProfileMultipleComp extends StatelessWidget {
  IconData? icon;
  final text;
  bool topBorder;
  ProfileMultipleComp(
      {super.key,
      required this.text,
      required this.icon,
      required this.topBorder});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15),
      decoration: BoxDecoration(
        border: Border(
          top: topBorder
              ? BorderSide(
                  color: Color.fromARGB(255, 224, 223, 223),
                  width: 1.0,
                )
              : BorderSide(
                  color: Colors.white,
                  width: 0,
                ),
          bottom: BorderSide(
            color: Color.fromARGB(255, 224, 223, 223),
            width: 1.0,
          ),
        ),
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 15, bottom: 15, left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                children: [
                  Icon(icon),
                  SizedBox(
                    width: 10,
                  ),
                  TextWidget(
                    text: text,
                    fontsize: 17,
                    fontweight: FontWeight.bold,
                  ),
                ],
              ),
            ),
            Icon(Icons.chevron_right),
          ],
        ),
      ),
    );
  }
}
