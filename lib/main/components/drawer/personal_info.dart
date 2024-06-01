import 'package:apparotech/res/constanta.dart';
import 'package:flutter/material.dart';

import 'header_info.dart';


class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column (
      crossAxisAlignment: CrossAxisAlignment.start
      ,
      children: [
        SizedBox(height: defaultPadding/2),
        AreaInfoText(title: 'Contact', text: '+91 7061754457'),
        AreaInfoText(title: 'Email', text: 'apparotech@gmail.com'),
        AreaInfoText(title: 'LinkedIn', text: 'apparotech'),
        AreaInfoText(title: 'Github', text: 'apparotech'),

        SizedBox(
          height: defaultPadding,

        ),
        Text('Service', style: TextStyle(color: Colors.blue),),
        SizedBox(height: defaultPadding,),
      ],
    );
  }
}