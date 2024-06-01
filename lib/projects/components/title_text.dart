import 'package:apparotech/view%20model/responsive.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
class TitleText extends StatelessWidget  {
  const TitleText({super.key, required this.prefix, required this.title});
  final String prefix;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:  MainAxisAlignment.center,
      children: [
        Text(
            '$prefix ',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
            color: Colors.white,
            fontSize: !Responsive.isDesktop(context)
              ? Responsive.isDesktop(context)
                ? 20
                : 30
                : 50,
            fontWeight: FontWeight.bold
          ),

        ),
        kIsWeb && Responsive.isDesktop(context)
        ? ShaderMask(
          shaderCallback: (bounds) {
            return const LinearGradient(
                end: Alignment.centerRight,
                begin: Alignment.centerLeft,
                colors: [
                  Colors.pink,
                  Colors.cyanAccent,
                ]).createShader(bounds);
          },
          child: Text(
            title,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Colors.white,
                fontSize: !Responsive.isDesktop(context)
                    ? Responsive.isLargeMobile(context)
                    ? 20
                    : 30
                    : 50,
                fontWeight: FontWeight.bold),
          ),
        )
            : Text(
          title,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
            color: Colors.white,
            fontSize: !Responsive.isDesktop(context)
              ? Responsive.isLargeMobile(context)
                ? 20
                : 30
                : 50,
            fontWeight: FontWeight.bold
          ),
        )
      ],
    );
  }
}