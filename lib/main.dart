import 'package:flutter/material.dart';
import 'package:seedbank/main_page_web.dart';
import 'package:seedbank/theme/colors.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Seed Bank',
      theme: ThemeData(
        fontFamily: 'Roboto',
        scaffoldBackgroundColor: backgroundMint,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: primaryGreen,
          secondary: deepGreen,
        ),
      ),
      home: const Scaffold(
        body: SafeArea(
          bottom: false,
          child: SingleChildScrollView(
            child: MainPageWeb(),
          ),
        ),
      ),
    );
  }
}