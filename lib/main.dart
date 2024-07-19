import 'package:apparotech/res/constanta.dart';
import 'package:apparotech/splash/splash_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp(
   options: FirebaseOptions(
       apiKey: "AIzaSyBgVG74fh8ty267rejsQpTTFiuoqYJCS_E",
       appId: "1:831533825723:web:134ef691f726f03346f39e",
       messagingSenderId:  "831533825723",
       projectId: "apparootech")
 );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: Colors.blue,
          useMaterial3: true,
        textTheme: GoogleFonts.openSansTextTheme(Theme.of(context).textTheme)
          .apply(bodyColor: Colors.white,)
          .copyWith(
          bodyText1: const TextStyle(color: bodyTextColor),
          bodyText2: const TextStyle(color: bodyTextColor),
        )
      ),
      home: SplashView()
    );
  }
}
