// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:groceries_app/components/TextWidget.dart';
import 'package:groceries_app/components/productCard.dart';
import 'package:groceries_app/components/searchIconWidget.dart';
import 'package:groceries_app/screens/filter.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 40),
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
            // topbarcomp
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: SearchIconWidet()),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: InkWell(
                      child: Icon(
                        Icons.menu_open,
                        size: 30,
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductFilterPage()),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),

            Expanded(
              child: SingleChildScrollView(
                  child: Container(
                padding: EdgeInsets.only(left: 4),
                child: ProductCardComp(),
              )),
            )
          ],
        ),
      ),
    );
  }
}
