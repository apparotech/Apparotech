

import 'package:apparotech/home/service.dart';
import 'package:flutter/material.dart';

import '../home/Aboutus.dart';
import '../main/components/navigation_button.dart';
import '../view model/controller.dart';
import '../view model/responsive.dart';

class NavigationButtonList extends StatelessWidget {
  const  NavigationButtonList({super.key});
  @override
  Widget build(BuildContext context){
    return TweenAnimationBuilder(tween: Tween(begin: 0.0,end: 1.0), duration: const Duration(milliseconds: 200), builder: (context, value, child) {
      return Transform.scale(
        scale: value,
        child: Row(
          children: [
            NavigationTextButton(onTap: () {controller.animateToPage(0, duration: const Duration(milliseconds: 500), curve: Curves.easeIn);}, text: 'Home'),

           // NavigationTextButton(onTap: () {controller.animateToPage(1, duration: const Duration(milliseconds: 500), curve: Curves.easeIn);}, text: 'Service'),
            NavigationTextButton(onTap: () {controller.animateToPage(2, duration: const Duration(milliseconds: 500), curve: Curves.easeIn);}, text: 'Project'),
            //NavigationTextButton(onTap: () {controller.animateToPage(3, duration: const Duration(milliseconds: 500), curve: Curves.easeIn);}, text: 'About'),
             NavigationTextButton(onTap: (){
               Navigator.push(
                 context, MaterialPageRoute(builder: (context) => AboutUsPage()),
               );
             }, text: 'About'),
            NavigationTextButton(onTap: (){
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => Service()),
              );
            }, text: 'About'),
          ],
        ),
      );
    },);
  }
}