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
    return MultiProvider(
      providers:  [
        ChangeNotifierProvider(create: (context) => HeightProvider()),
        ChangeNotifierProvider(create: (context)=> WeightProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
