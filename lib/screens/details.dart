// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:groceries_app/components/TextWidget.dart';
import 'package:groceries_app/components/button.dart';

class FoodDetails extends StatelessWidget {
  const FoodDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            // image and icon container
            Stack(
              children: [
                Container(
                  height: 230,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/image/sliderimg.png"),
                        fit: BoxFit.cover),
                  ),
                ),

                // icon comp content
                Container(
                  margin: EdgeInsets.only(top: 40, left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                        child: InkWell(
                          child: Icon(Icons.chevron_left),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                        child: Icon(Icons.search),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // bottom container
                Container(
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(
                            text: "Naturel Red Apple",
                            fontweight: FontWeight.bold,
                            fontsize: 17,
                          ),
                          SizedBox(height: 7),
                          TextWidget(
                            text: "1kg, Price",
                            fontsize: 14,
                            color: Colors.grey,
                          )
                        ],
                      ),
                      Icon(Icons.favorite)

                      // price and add to cart
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 5, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          MaterialButton(
                            height: 35.0,
                            elevation: 0,
                            minWidth: 30.0,
                            color: Colors.white,
                            textColor: Colors.black,
                            child: Icon(Icons.add),
                            onPressed: () => {},
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 7, right: 7),
                            child: TextWidget(
                              text: "0",
                              fontsize: 17,
                              fontweight: FontWeight.bold,
                            ),
                          ),
                          MaterialButton(
                            height: 35.0,
                            elevation: 0,
                            minWidth: 30.0,
                            color: Colors.white,
                            textColor: Colors.black,
                            child: Icon(Icons.remove),
                            onPressed: () => {},
                          ),
                        ],
                      ),
                      TextWidget(
                        text: "\$4.59",
                        fontweight: FontWeight.bold,
                        fontsize: 17,
                      )
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(left: 15, right: 15, top: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                        text: "Details",
                        fontweight: FontWeight.bold,
                        fontsize: 17,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextWidget(
                        text:
                            "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet. Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet..",
                        color: Colors.grey,
                        fontsize: 13,
                        textOverflow: TextOverflow.visible,
                        height: 1.4,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(left: 15, right: 15, bottom: 15),
        child: SizedBox(
          width: double.infinity,
          height: 50,
          child: ReuseableButton(
            text: "Add To Cart",
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
