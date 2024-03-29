import 'package:flutter/material.dart';
import 'package:green/screens/auth/auth_screen.dart';
import 'package:green/screens/auth/login_form.dart';
import 'package:green/screens/home_screen.dart';
import 'package:green/screens/landing_screen.dart';
import 'package:green/screens/landing_screen1.dart';
import 'package:green/screens/question_screen.dart';
import 'package:green/data/questions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AuthScreen(),
      // home: QuestionsScreen(
      //   questions: questionsList,
      // ),
    );
  }
}
