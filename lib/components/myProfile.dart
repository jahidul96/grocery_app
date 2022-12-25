// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:groceries_app/components/TextWidget.dart';

class MyProfileComp extends StatelessWidget {
  const MyProfileComp({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://cdn.pixabay.com/photo/2014/02/27/16/10/tree-276014_960_720.jpg"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(100),
            ),
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                TextWidget(text: "Jahidul islam"),
                SizedBox(
                  width: 8,
                ),
                Icon(
                  Icons.edit,
                  color: Colors.green,
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            TextWidget(
              text: "Jahidul@gmail.com",
              fontsize: 15,
              color: Colors.grey[400],
            ),
          ],
        )
      ],
    );
  }
}
