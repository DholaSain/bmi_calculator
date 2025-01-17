
import 'package:bmi_calculator/view/customs/curve.dart';
import 'package:bmi_calculator/view/theme/colors.dart';

import 'package:flutter/material.dart';

class CurvedButton extends StatelessWidget {
  const CurvedButton(
      {Key? key,
      this.onPressed,
      this.icon = Icons.arrow_forward,
      this.text = "Next"})
      : super(key: key);

  final VoidCallback? onPressed;
  final String? text;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: ClipPath(
        clipper: CustomCurvePath(),
        child: Container(
          decoration: BoxDecoration(
              color: primary, borderRadius: BorderRadius.circular(8)),
          alignment: Alignment.center,
          height: 46,
          width: 75,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                text!,
                style: TextStyle(color: Colors.white),
              ),
              Icon(
                icon!,
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
