import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/view/customs/curve.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CurvedButton extends StatelessWidget {
  const CurvedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
            children: const [
              Text(
                "Next",
                style: TextStyle(color: Colors.white),
              ),
              Icon(
                Icons.arrow_forward,
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}