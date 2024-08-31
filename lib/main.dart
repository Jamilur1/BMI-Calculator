import 'package:bmi/home.dart';
import 'package:bmi/result.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xff1d1b70),
        fontFamily: GoogleFonts.lato().fontFamily,
        appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: Color(0xff1d1b70),
        ),


        useMaterial3: true,
      ),

      home: Home(),

    );
  }
}
