import 'dart:html';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:apparotech/Adapter/ServiceAdapter/ServiceContant.dart';
import 'package:flutter/material.dart';

import '../model/banner.dart';
class Service extends StatefulWidget {
  @override
  _ServiceState createState() => _ServiceState();

}

class _ServiceState extends State<Service> {
  late double height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height > 600
        ? MediaQuery.of(context).size.height
        : 600;
    width = MediaQuery.of(context).size.width > 300
        ? MediaQuery.of(context).size.width
        : 300;
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
        backgroundColor: Colors.blue,

        title: Center (
          child: Text('Service'),
        ),

    ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                ServiceContant(),

                /*SizedBox(
                  width: width ,
                  height: height,

                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: DefaultTextStyle(
                    style: const TextStyle(
                      fontSize: 12.0,
                      fontFamily: 'Agne',
                    ),

                    child: AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText (
                    "Hello! I'm Souvik Ghosh , a Computer Science Graduate, Flutter developer Developer and System Engineer in Tata Consultancy Services(TCS).\n"
                    'I love to create performant and interesting stuff that are benificial to the community. I enjoy learning and exploring new areas in the technologies. \nIn my opinion,'
                    'getting your hands dirty is the best way to learn a new skill.\n'
                    'My area of interest are Cross Platform Application Development , Android Application Development and Full Stack Development\n'
                    'Beside Programming, I love playing cricket and watching cricket matches with a mug full of coffee.',

                          textStyle: const TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,

                          ),
                          speed: const Duration(microseconds: 2000),
                        ),
                      ],
                      totalRepeatCount: 4,
                      pause: const Duration(milliseconds: 1000),
                      displayFullTextOnTap: true,
                      stopPauseOnTap: true,
                    )
                  ),
                ),
                )

                 */

              ],
            ),
          ),
        ),
      ),
    );

  }
}