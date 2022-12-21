// ignore_for_file: must_be_immutable

import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TextWidget extends StatelessWidget {
  final String text;
  double? height;
  Color? color;
  double fontsize;
  FontWeight? fontweight;
  TextOverflow textOverflow;

  TextWidget({
    super.key,
    required this.text,
    this.fontsize = 20,
    this.textOverflow = TextOverflow.ellipsis,
    this.color = Colors.black,
    this.fontweight,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontSize: fontsize,
          overflow: textOverflow,
          fontWeight: fontweight,
          height: height),
    );
  }
}
