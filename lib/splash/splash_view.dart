import 'dart:async';

import 'package:apparotech/intro/components/animated_texts_componenets.dart';
import 'package:apparotech/res/constanta.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../home/home.dart';
import 'componenets/animated_loading_text.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});
  State<SplashView>  createState() => _SplashViewState();

}

class _SplashViewState extends State<SplashView> {
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),() {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const  HomePage() ,));
    });
  }
  @override
  Widget build (BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
                AnimatedImageContainer(width: 110, height: 110,),
               SizedBox(height: defaultPadding,),
               AnimatedLoadingText(),
          ],
        ),
      ),
    );
  }
}