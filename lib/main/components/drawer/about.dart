import 'package:apparotech/res/constanta.dart';
import 'package:flutter/material.dart';

import 'drawer_image.dart';
class About extends StatelessWidget {
  const About({super.key});
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 1.23,
         child: Container(
           color: Colors.blue,
           child: Column(
              children: [
                const Spacer(flex: 2,),
                const DrawerImage(),
                const Spacer(),
                Text('Apparotech', style: Theme.of(context).textTheme.titleSmall,),
                const SizedBox(height: defaultPadding/4,),
                const Text('Hardware & Software Devlopement',
                 textAlign: TextAlign.center,
                 style: TextStyle(
                   fontWeight: FontWeight.w200,
                 ),),
                const Spacer(flex: 2,),
              ],
           ),
         ),);
  }
}