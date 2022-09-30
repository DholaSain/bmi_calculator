import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/data/models/gender.dart';
import 'package:bmi_calculator/view/customs/gender_selection_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class GenderPicker extends StatefulWidget {
  const GenderPicker({Key? key}) : super(key: key);

  @override
  State<GenderPicker> createState() => _GenderPickerState();
}

class _GenderPickerState extends State<GenderPicker> {
  int selected = 0;

  List<Gender> genders = [
    Gender(
      gender: "Male",
      image: "male.gif",
      color: blue,
    ),
    Gender(
      gender: "Female",
      image: "female.gif",
      color: pink,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: genders.length,
        separatorBuilder: (context, index) {
          return const SizedBox(width: 10);
        },
        itemBuilder: (context, index) {
          int current = index;
          return GenderSelectionTale(
            gender: genders[index],
            isSelected: current == selected,
            onPressed: () {
              setState(() {
                selected = index;
              });
            },
          );
        },
      ),
    );
  }
}