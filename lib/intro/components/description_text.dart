import 'package:flutter/material.dart';

import '../../view model/responsive.dart';
class AnimatedDescriptionText extends StatelessWidget {
  const AnimatedDescriptionText(
  {super.key, required this.start, required this.end}
      );
  final double start;
  final double end;
  @override
  Widget build (BuildContext context) {
    return TweenAnimationBuilder(tween: Tween(begin: start, end: end),
        duration:const Duration(milliseconds: 200),
        builder: (context, value, child){
      return LayoutBuilder(
          builder: (context, constraints) {
            if(constraints.maxWidth <600) {
              return Text(
                'Custom web and mobile app\ndevelopment for android,\nios, and we also\ndevelop hardware products.', // Line breaks for phone
                style: TextStyle(color: Colors.black, fontSize: value),
              );
            } else {
              return Text(
                'Custom web and mobile app development for android, ios, \nand we also develop hardware products.', // Single line for larger screens
                style: TextStyle(color: Colors.black, fontSize: value),
              );
            }
          });
        });
  }
}