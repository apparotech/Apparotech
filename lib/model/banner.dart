import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';


class  BoardingScreen extends StatefulWidget{
  const BoardingScreen({super.key});

  @override
  State<BoardingScreen> createState() => _BoardingScreenState();


}
class _BoardingScreenState extends State<BoardingScreen>{
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {

  }
  @override
  Widget build(BuildContext context){
    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      skipStyle: ButtonStyle(
          textStyle: MaterialStateProperty.all(TextStyle(fontSize: 17)),
          foregroundColor: MaterialStateProperty.all(Colors.redAccent)),
      //allowImplicitScrolling: true,
     // autoScrollDuration: 300000,
      //infiniteAutoScroll: true,
      pages:[
        PageViewModel(
            title: "",
            bodyWidget: Column(
              children: [
                Text('Welcome to Blog Hub',
                    style: GoogleFonts.mochiyPopOne(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromARGB(255, 248, 64, 64)
                    )),
                const SizedBox(height: 20),
                const Image(image: AssetImage('assets/images/apparologo.png')),
              ],
            )

        ),
        PageViewModel(
          title: "",
          bodyWidget: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Image(image: AssetImage('assets/images/PredictU.jpg')),
              const SizedBox(height: 20),
              Text('Post Your Blog',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.mochiyPopOne(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 119, 56,199)
                  ))

            ],
          ),
        ),
        PageViewModel(
          title: "",
          bodyWidget: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Give review about Blog ',
                  style: GoogleFonts.mochiyPopOne(
                      fontSize:33,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromARGB(255, 248, 64, 64)

                  )
              ),
              const SizedBox(height: 20),
              const Image(image: AssetImage('assets/images/apparologo.png')),
            ],
          ),
        ),
        PageViewModel(
          title:"",
          bodyWidget: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Image(image: AssetImage('assets/images/apparologo.png')),
              const SizedBox(height:20),
              Text("Enjoy",
                  style: GoogleFonts.mochiyPopOne(
                      fontSize: 33,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromARGB(255, 119, 56, 199)
                  )),

            ],
          ),
        ),
      ],
      showSkipButton: true,
      skipOrBackFlex: 0,
      nextFlex:0,
      // onChange: (val) {},
      skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600)),
      next: const Icon(
        Icons.arrow_forward,
      ),
      done: const Text('Done',
          style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 248, 64, 64)
          )),
      onDone: () => _onIntroEnd(context),
      nextStyle: ButtonStyle(
          foregroundColor:
          MaterialStateProperty.all(Color.fromARGB(255, 248, 64, 64)
          )
      ),
      dotsDecorator: const DotsDecorator(
        size: Size.square(10),
        activeColor: Colors.redAccent,
        activeSize: Size.square(17),
      ),
    );

  }
}