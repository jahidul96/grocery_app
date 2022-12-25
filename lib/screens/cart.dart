import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:groceries_app/components/TextWidget.dart';
import 'package:groceries_app/components/cartItem.dart';

class MyCartPage extends StatefulWidget {
  const MyCartPage({super.key});

  @override
  State<MyCartPage> createState() => _MyCartPageState();
}

class _MyCartPageState extends State<MyCartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: TextWidget(
          text: "Cart",
          fontweight: FontWeight.bold,
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CartItem(),
            CartItem(),
            CartItem(),
            CartItem(),
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
              text: "Go To Payment!",
              fontweight: FontWeight.bold,
              fontsize: 17,
              color: Colors.white,
            )),
      ),
    );
  }
}
