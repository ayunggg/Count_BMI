// ignore_for_file: prefer_const_constructors

import 'package:count_bmi/height_provider.dart';
import 'package:count_bmi/home_page.dart';
import 'package:count_bmi/weight_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<WeightProvider>(
      create: (context) => WeightProvider(),
      child: ChangeNotifierProvider<HeightProvider>(
        create: (context) => HeightProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomePage(),
        ),
      ),
    );
  }
}
