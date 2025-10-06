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
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Text("Height"),
          Text(_value.toString()),
          Slider(
            value: _value,
            min: 0.0,
            max: 100.0,
            onChanged: (value) {
              setState(() {
                _value = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
