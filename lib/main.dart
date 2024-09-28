import 'package:flutter/material.dart';
import 'package:test_app/pallete.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:test_app/secret.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'home_page.dart';

void main() {
  final model = GenerativeModel(
    model: 'gemini-1.5-flash-latest',
    apiKey: openAIAPIkey,
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rishav',
      theme: ThemeData.light(useMaterial3: true).copyWith(
          scaffoldBackgroundColor: Pallete.whiteColor,
          appBarTheme: const AppBarTheme(
            backgroundColor: Pallete.whiteColor,
          )),
      home: const HomePage(),
    );
  }
}
