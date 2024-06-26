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
      return Text(
        'Custom web and mobile app development ,${Responsive.isLargeMobile(context) ? '\n' : ''}for android and ios platforms  ${!Responsive.isLargeMobile(context) ? '\n' : ''}& we also design and development of hardware product. ',
        maxLines: 3,
            overflow: TextOverflow.ellipsis,
        style:  TextStyle(color: Colors.black, fontSize: value),
      );
        });
  }
}