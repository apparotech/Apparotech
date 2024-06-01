import 'package:apparotech/main/components/drawer/my_service.dart';
import 'package:apparotech/main/components/drawer/personal_info.dart';
import 'package:apparotech/res/constanta.dart';
import 'package:flutter/material.dart';

import 'about.dart';
import 'contact_icons.dart';

class CustomDrawer extends StatelessWidget {
const CustomDrawer({super.key});
@override
  Widget build(BuildContext context) {
  return Drawer(
    backgroundColor: primaryColor,
    child: SingleChildScrollView(
      child: Column(
        children: [
          const About(),
          Container(
            color: bgColor,
            child: const Padding(
                padding: EdgeInsets.all(defaultPadding/2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PersonalInfo(),
                    MYService(),
                    Divider(),
                    SizedBox(height: defaultPadding,),
                    ContactIcon(),
                  ],
                ),),
          )

        ],
      ),
    ),
  );
}
}