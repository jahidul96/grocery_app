// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:groceries_app/components/TextWidget.dart';

class HomeProfileComp extends StatelessWidget {
  const HomeProfileComp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 35,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/image/carrot.png"))),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.location_pin,
                size: 18,
              ),
              SizedBox(width: 6),
              TextWidget(
                text: "Dhaka, Banassre",
                fontweight: FontWeight.bold,
                fontsize: 16,
              ),
            ],
          )
        ],
      ),
    );
  }
}
