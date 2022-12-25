import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:groceries_app/components/TextWidget.dart';

class SelectFilterComp extends StatelessWidget {
  final text;
  Function(bool?)? onChanged;
  bool isSelected;

  SelectFilterComp({
    super.key,
    required this.text,
    required this.onChanged,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Checkbox(value: isSelected, onChanged: onChanged),
          TextWidget(
            text: text,
            fontsize: 15,
            fontweight: FontWeight.bold,
          )
        ],
      ),
    );
  }
}
