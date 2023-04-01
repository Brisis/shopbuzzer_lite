import 'package:flutter/material.dart';
import 'package:shopbuzzer/helpers/constants.dart';
import 'package:shopbuzzer/views/welcome.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ShopBuzzer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: kPrimaryColor,
          secondary: kPrimaryColor,
        ),
        textTheme: GoogleFonts.openSansTextTheme(),
        //fontFamily: 'ShopBuzzer',
      ),
      home: const WelcomeView(),
    );
  }
}
