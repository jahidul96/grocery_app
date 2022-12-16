// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ReuseableButton extends StatelessWidget {
  final String text;
  double size;
  Color? color;
  FontWeight fontWeight;
  Function()? onPressed;

  ReuseableButton(
      {super.key,
      required this.text,
      this.onPressed,
      this.size = 17,
      this.color = Colors.black,
      this.fontWeight = FontWeight.normal});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ElevatedButton(
        child: Text(
          text,
          style: TextStyle(
            fontSize: size,
            fontWeight: fontWeight,
            color: color,
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
