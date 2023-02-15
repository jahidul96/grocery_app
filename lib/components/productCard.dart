// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sort_child_properties_last

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:groceries_app/components/TextWidget.dart';
import 'package:groceries_app/components/button.dart';
import 'package:groceries_app/screens/details.dart';

class ProductCardComp extends StatelessWidget {
  const ProductCardComp({super.key});

  @override
  Widget build(BuildContext context) {
    void navigateToDetails() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => FoodDetails()),
      );
    }

    return GridView.builder(
        padding: EdgeInsets.zero,
        itemCount: 10,
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            mainAxisExtent: 200),
        itemBuilder: ((context, index) {
          return Product();
        }));
  }
}

// product
class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/details');
      },
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 6.0,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 60,
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/image/item.png"),
                ),
              ),
            ),
            TextWidget(
              text: "Organic Bananas",
              fontsize: 16,
              fontweight: FontWeight.bold,
            ),
            SizedBox(height: 10),
            TextWidget(
              text: "7pcs, Priceg",
              fontsize: 14,
              fontweight: FontWeight.w400,
              color: Colors.grey,
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget(
                  text: "\$ 4.5",
                  fontsize: 15,
                  fontweight: FontWeight.bold,
                ),
                Container(
                  width: 43,
                  child: ReuseableButton(
                    text: "+",
                    size: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
