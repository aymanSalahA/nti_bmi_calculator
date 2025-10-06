import 'package:flutter/material.dart';
import 'widgets/gender_selection.dart';
import 'widgets/height_selection.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 157, 43, 250),
            title: Text(
              "BMI Calculator",
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
          ),
          body: Column(
            children: [
              SizedBox(height: 10),
              GenderSelection(), //!
              HeightSelection(),
            ],
          ),
        ),
      ),
    );
  }
}
