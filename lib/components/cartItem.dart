// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:groceries_app/components/TextWidget.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 223, 220, 220).withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 3,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      margin: EdgeInsets.only(top: 20, bottom: 15),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
              width: 80,
              height: 60,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/image/item.png"),
                    fit: BoxFit.cover),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(
                            text: "Bananna",
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
                      Icon(Icons.delete)

                      // price and add to cart
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5, right: 5),
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
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
