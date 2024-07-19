import 'package:flutter/material.dart';

import '../components/navigation_button_list.dart';
import '../intro/components/side_menu_button.dart';
import '../res/constanta.dart';
import '../view model/responsive.dart';
import 'components/connect_button.dart';
class TopNavigationBar extends StatelessWidget {
  const TopNavigationBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          Padding(
              padding: const  EdgeInsets.all(defaultPadding),
            child: !Responsive.isLargeMobile(context)? Image.asset('assets/images/webicon02.png') : MenuButton(onTap: () => Scaffold.of(context).openDrawer(),),
          ),
          const Spacer(flex:2,),
          if(!Responsive.isLargeMobile(context))  const NavigationButtonList(),
          const Spacer(flex: 2,),
          const ConnectButton(),
          const Spacer(),
        ],
      ),
    );
  }
}