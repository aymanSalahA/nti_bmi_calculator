import 'package:flutter/material.dart';

class HeightSelection extends StatefulWidget {
  const HeightSelection({super.key});

  @override
  State<HeightSelection> createState() => _HeightSelectionState();
}

class _HeightSelectionState extends State<HeightSelection> {
  double _value = 0.0;

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: _value,
      min: 0.0,
      max: 100.0,
      onChanged: (value) {
        setState(() {
          _value = value;
        });
      },
    );
  }
}
