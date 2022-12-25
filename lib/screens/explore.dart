// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:groceries_app/components/TextWidget.dart';
import 'package:groceries_app/components/categories.dart';
import 'package:groceries_app/components/reuseableComp.dart';
import 'package:groceries_app/screens/search.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: TextWidget(
          text: "Explore",
          fontweight: FontWeight.bold,
          fontsize: 17,
        ),
        centerTitle: true,
      ),
      body: Container(
          margin: EdgeInsets.only(left: 15, right: 15, top: 15),
          child: Column(
            children: [
              SearchBarComp(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SearchPage()),
                  );
                },
              ),
              CategoriesComp(),
            ],
          )),
    );
  }
}
