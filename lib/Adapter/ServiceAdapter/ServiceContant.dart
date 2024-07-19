import 'package:animated_introduction/animated_introduction.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:apparotech/model/banner.dart';
import 'package:flutter/material.dart';

import '../../variable.dart';
class ServiceContant extends StatefulWidget {
  @override
  _ServiceContantState createState() => _ServiceContantState();

}
 class _ServiceContantState extends State<ServiceContant> {
    String _service = '';




  late double height, width;
  @override
   Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height > 600
        ? MediaQuery.of(context).size.height
        : 600;
    width = MediaQuery.of(context).size.width > 300
        ? MediaQuery.of(context).size.width
        : 300;
    var borderColor = Colors.white;
    var backgroundColor = Colors.transparent;
    return Container(
      child: Wrap(
        spacing: 10, // Adjust the spacing as needed
        runSpacing: 10, // Adjust the spacing as needed
        children: [
          SizedBox(
            width: 200, // Set a fixed width for each AnimatedTextKit
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Agne',
                ),
                child: AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'Andriod',
                      textStyle: const TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                      speed: const Duration(milliseconds: 200),
                    ),
                  ],
                  totalRepeatCount: 5,
                  pause: const Duration(microseconds: 100),
                  displayFullTextOnTap: true,
                  stopPauseOnTap: true,
                ),
              ),
            ),
          ),
          SizedBox(
            width: width * 0.6, // Set a fixed width for the second AnimatedTextKit
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 12.0,
                  fontFamily: 'Agne',
                ),
                child: AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      "Hello! I'm Souvik Ghosh , a Computer Science Graduate, Flutter developer Developer and System Engineer in Tata Consultancy Services(TCS).\n"
                          'I love to create performant and interesting stuff that are beneficial to the community. I enjoy learning and exploring new areas in the technologies. \nIn my opinion,'
                          'getting your hands dirty is the best way to learn a new skill.\n'
                          'My area of interest are Cross Platform Application Development , Android Application Development and Full Stack Development\n'
                          'Beside Programming, I love playing cricket and watching cricket matches with a mug full of coffee.',
                      textStyle: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                      speed: const Duration(microseconds: 2000),
                    ),
                  ],
                  totalRepeatCount: 1,
                  pause: const Duration(milliseconds: 1000),
                  displayFullTextOnTap: true,
                  stopPauseOnTap: true,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 50, // Set a fixed width for the third AnimatedTextKit
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Agne',
                ),
                child: AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'Ios',
                      textStyle: const TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                      speed: const Duration(milliseconds: 200),
                    ),
                  ],
                  totalRepeatCount: 5,
                  pause: const Duration(microseconds: 100),
                  displayFullTextOnTap: true,
                  stopPauseOnTap: true,
                ),
              ),
            ),
          ),
        ],
      ),


    );
  }
 }