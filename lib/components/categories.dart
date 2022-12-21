// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:groceries_app/components/TextWidget.dart';

class CategoriesComp extends StatelessWidget {
  const CategoriesComp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Wrap(
        spacing: 10,
        children: [
          InkWell(
            child: SingleCategorie(),
          ),
          SingleCategorie(),
          SingleCategorie(),
          SingleCategorie(),
        ],
      ),
    );
  }
}

class SingleCategorie extends StatelessWidget {
  const SingleCategorie({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        color: Colors.amberAccent,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 60,
            margin: EdgeInsets.only(bottom: 8),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/image/c1.png"),
              ),
            ),
          ),
          TextWidget(
            text: "Frash Fruits",
            fontsize: 15,
            fontweight: FontWeight.bold,
            textOverflow: TextOverflow.visible,
          ),
          TextWidget(
            text: " & Vegetable",
            fontsize: 15,
            fontweight: FontWeight.bold,
            textOverflow: TextOverflow.visible,
          ),
        ],
      ),
    );
  }
}
