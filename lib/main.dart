import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:green/firebase_options.dart';
import 'package:green/screens/auth/auth_screen.dart';
import 'package:green/screens/auth/login_form.dart';
import 'package:green/screens/checkout/checkout_screen.dart';
import 'package:green/screens/checkout/payment_screen.dart';
import 'package:green/screens/checkout/receipt_screen.dart';
import 'package:green/screens/explore/explore_destinations.dart';
import 'package:green/screens/home_screen.dart';
import 'package:green/screens/landing_screen.dart';
import 'package:green/screens/landing_screen1.dart';
import 'package:green/screens/question_screen.dart';
import 'package:green/data/questions.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ExploreDestinationsScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
