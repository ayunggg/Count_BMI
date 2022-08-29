// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:count_bmi/height_provider.dart';
import 'package:count_bmi/weight_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var heightProvider = Provider.of<HeightProvider>(context);
    var weightProvider = Provider.of<WeightProvider>(context);
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Your Weight (Kg)',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          // **NOTE : Use Consumer
          // Consumer<WeightProvider>(
          //   builder: (context, weightProvider, _) => Slider(
          //     min: 1,
          //     max: 100,
          //     activeColor: Colors.blue,
          //     inactiveColor: Colors.blue.withOpacity(0.2),
          //     value: weightProvider.weight,
          //     divisions: 100,
          //     label: weightProvider.weight.round().toString(),
          //     onChanged: (newValue) {
          //       newValue = newValue.roundToDouble();
          //       print('Weight $newValue');
          //       weightProvider.weight = newValue;
          //     },
          //   ),
          // ),
          // **NOTE : Use Provider.of(Context)
          Slider(
            min: 1,
            max: 100,
            activeColor: Colors.blue,
            inactiveColor: Colors.blue.withOpacity(0.2),
            value: weightProvider.weight,
            divisions: 100,
            label: weightProvider.weight.round().toString(),
            onChanged: (newValue) {
              newValue = newValue.roundToDouble();
              print('Weight $newValue');
              weightProvider.weight = newValue;
            },
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            'Your Height (cm)',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          //**Note : Use Consumer */
          // Consumer<HeightProvider>(
          //   builder: (context, heightProvider, _) => Slider(
          //     min: 1,
          //     max: 200,
          //     activeColor: Colors.pink,
          //     inactiveColor: Colors.pink.withOpacity(0.2),
          //     value: heightProvider.height,
          //     divisions: 200,
          //     label: heightProvider.height.round().toString(),
          //     onChanged: (newValue) {
          //       newValue = newValue.roundToDouble();
          //       print('Height $newValue');
          //       heightProvider.height = newValue;
          //     },
          //   ),
          // ),
          //**Note : Use Provider.of(Context) */
          Slider(
            min: 1,
            max: 200,
            activeColor: Colors.pink,
            inactiveColor: Colors.pink.withOpacity(0.2),
            value: heightProvider.height,
            divisions: 200,
            label: heightProvider.height.round().toString(),
            onChanged: (newValue) {
              newValue = newValue.roundToDouble();
              print('Height $newValue');
              heightProvider.height = newValue;
            },
          ),
          SizedBox(
            height: 20,
          ),
          //** Note : Use Consumer */
          // Consumer<WeightProvider>(
          //   builder: (context, weightProvider, _) => Consumer<HeightProvider>(
          //     builder: (context, heightProvider, _) => Text(
          //       'Your BMI :\n${(weightProvider.weight / (pow(heightProvider.height / 100, 2))).toStringAsFixed(2)}',
          //       style: TextStyle(
          //         fontWeight: FontWeight.w500,
          //         fontSize: 24,
          //         color: Colors.black,
          //       ),
          //       textAlign: TextAlign.center,
          //     ),
          //   ),
          // ),
          //** Note : Use Provider.of(context) */
          Text(
            'Your BMI :\n${(weightProvider.weight / (pow(heightProvider.height / 100, 2))).toStringAsFixed(2)}',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 24,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ));
  }
}
