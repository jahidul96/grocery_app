// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:groceries_app/components/TextWidget.dart';
import 'package:groceries_app/components/productCard.dart';
import 'package:groceries_app/components/reuseableComp.dart';
import 'package:groceries_app/screens/explore.dart';
import 'package:groceries_app/screens/profile.dart';
import 'package:groceries_app/screens/search.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 40),
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Column(
            children: [
              // top profile comp
              HomeProfileComp(),

              // search comp
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Column(
                  children: [
                    SearchBarComp(onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ExplorePage()),
                      );
                    }),
                    SliderComp(),
                  ],
                ),
              ),
              SizedBox(height: 10),

              // Exclusive offer text
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                    text: "Exclusive Offer",
                    fontsize: 18,
                    fontweight: FontWeight.bold,
                  ),
                  TextWidget(
                    text: "See All",
                    fontsize: 15,
                    fontweight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ],
              ),
              SizedBox(height: 20),

              // product content
              ProductCardComp(),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
