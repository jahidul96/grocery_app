// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:groceries_app/screens/bottomNavigation.dart';

class SearchIconWidet extends StatelessWidget {
  const SearchIconWidet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      width: double.infinity,
      height: 45,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Row(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          GestureDetector(
            child: Icon(Icons.chevron_left),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MainPage()),
              );
            },
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Search",
              ),
            ),
          ),
          Container(
            width: 30,
            height: 30,
            margin: EdgeInsets.only(left: 8),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Icon(
              Icons.search,
              color: Colors.white,
              size: 15,
            ),
          )
        ],
      ),
    );
  }
}
