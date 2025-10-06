import 'package:flutter/material.dart';

class GenderSelection extends StatefulWidget {
  const GenderSelection({super.key});

  @override
  State<GenderSelection> createState() => _GenderSelectionState();
}

class _GenderSelectionState extends State<GenderSelection> {
  bool maleIsSelected = false;
  bool femaleIsSelected = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        InkWell(
          onTap: () {
            setState(() {
              maleIsSelected = true;
              femaleIsSelected = false;
            });
          },
          child: Container(
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8),
              color: maleIsSelected ? Colors.blue : Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.male), //!
                Text("Male"),
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {
            setState(() {
              maleIsSelected = false;
              femaleIsSelected = true;
            });
          },
          child: Container(
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8),
              color: femaleIsSelected ? Colors.pink : Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.female), //!
                Text("Female"),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
