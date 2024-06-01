import 'package:apparotech/intro/components/subtitle_text.dart';
import 'package:apparotech/view%20model/responsive.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
class CombineSubtitleText extends StatelessWidget {
  const CombineSubtitleText ({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Responsive(
          desktop: AnimatedSubtitleText(
              start: 30, end: 40, text: 'Hardware '),
          largeMobile: AnimatedSubtitleText(
              start: 30, end: 25, text: 'Hardware '),
          mobile: AnimatedSubtitleText(
              start: 25, end: 20, text: 'Hardware '),
          tablet: AnimatedSubtitleText(
              start: 40, end: 30, text: 'Hardware '),
        ),
        (kIsWeb && Responsive.isLargeMobile(context)
            ? const Responsive(
          desktop: AnimatedSubtitleText(
              start: 30,
              end: 40,
              text: 'Software ',
              gradient: true),
          largeMobile: AnimatedSubtitleText(
              start: 30,
              end: 25,
              text: 'Software ',
              gradient: true),
          mobile: AnimatedSubtitleText(
              start: 25,
              end: 20,
              text: 'Software ',
              gradient: true),
          tablet: AnimatedSubtitleText(
              start: 40,
              end: 30,
              text: 'Software ',
              gradient: true),
        )
            : ShaderMask(
          shaderCallback: (bounds) {
            return const LinearGradient(colors: [
              Colors.purple,
              Colors.white,
            ]).createShader(bounds);
          },
          child: const Responsive(
            desktop: AnimatedSubtitleText(
                start: 30,
                end: 40,
                text: 'Software ',
                gradient: false),
            largeMobile: AnimatedSubtitleText(
                start: 30,
                end: 25,
                text: 'Software ',
                gradient: false),
            mobile: AnimatedSubtitleText(
                start: 25,
                end: 20,
                text: 'Software ',
                gradient: true),
            tablet: AnimatedSubtitleText(
                start: 40,
                end: 30,
                text: 'Software',
                gradient: false),
          ),
        ))
      ],
    );
  }
}