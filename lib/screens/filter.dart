// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:groceries_app/components/TextWidget.dart';
import 'package:groceries_app/components/selectcheck.dart';
import 'package:groceries_app/screens/search.dart';

class ProductFilterPage extends StatefulWidget {
  const ProductFilterPage({super.key});

  @override
  State<ProductFilterPage> createState() => _ProductFilterPageState();
}

class _ProductFilterPageState extends State<ProductFilterPage> {
  List categories = [
    ["Egg", false],
    ["Milk", false],
    ["Fast Food", false],
    ["Beverage", false],
  ];
  List brands = [
    ["CocaCola", false],
    ["Kazi Farms", false],
    ["Chaldal", false],
    ["Showpno", false],
  ];

  void checkCategorie(bool? value, int index) {
    setState(() {
      categories[index][1] = !categories[index][1];
    });
  }

  void checkBrands(bool? value, int index) {
    setState(() {
      brands[index][1] = !brands[index][1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(top: 40),
        child: Column(
          children: [
            // top icon and head text comp
            Container(
              padding: EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    child: Icon(Icons.chevron_left),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SearchPage()),
                      );
                    },
                  ),
                  TextWidget(
                    text: "Filters",
                    fontsize: 17,
                    fontweight: FontWeight.bold,
                  ),
                  Text(""),
                ],
              ),
            ),

            // bottom content!!!
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 30),
                padding: EdgeInsets.all(20),
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                        text: "Categories",
                        fontsize: 18,
                        fontweight: FontWeight.bold,
                      ),
                      SizedBox(
                        height: 190,
                        child: ListView.builder(
                          itemCount: categories.length,
                          itemBuilder: (context, index) {
                            return SelectFilterComp(
                              text: categories[index][0],
                              isSelected: categories[index][1],
                              onChanged: (value) =>
                                  checkCategorie(value, index),
                            );
                          },
                        ),
                      ),
                      TextWidget(
                        text: "Brands",
                        fontsize: 18,
                        fontweight: FontWeight.bold,
                      ),
                      SizedBox(
                        height: 190,
                        child: ListView.builder(
                          itemCount: brands.length,
                          itemBuilder: (context, index) {
                            return SelectFilterComp(
                              text: brands[index][0],
                              isSelected: brands[index][1],
                              onChanged: (value) => checkBrands(value, index),
                            );
                          },
                        ),
                      ),
                    ]),
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
              text: "Apply Filter",
              fontweight: FontWeight.bold,
              fontsize: 17,
              color: Colors.white,
            )),
      ),
    );
  }
}
