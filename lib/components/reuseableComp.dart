// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:groceries_app/components/TextWidget.dart';
import 'package:groceries_app/screens/explore.dart';

// homeprofile comp
class HomeProfileComp extends StatelessWidget {
  const HomeProfileComp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 30,
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
                fontsize: 15,
              ),
            ],
          )
        ],
      ),
    );
  }
}

// searchcomp content
class SearchBarComp extends StatelessWidget {
  Function()? onTap;
  SearchBarComp({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 45,
        padding: EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 206, 203, 203),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: InkWell(
          child: Row(
            children: [
              Icon(Icons.search),
              SizedBox(width: 8),
              TextWidget(
                text: "Search Store",
                fontsize: 15,
              )
            ],
          ),
          onTap: onTap,
        ));
  }
}

// slidercomp content

class SliderComp extends StatelessWidget {
  const SliderComp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15, bottom: 15),
      height: 150,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/image/sliderimg.png"),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
    );
  }
}
