import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:green/navigation.dart';
import 'package:green/screens/landing/landing_screen1.dart';

class AuthWidgetTree extends StatefulWidget {
  const AuthWidgetTree({super.key});

  @override
  State<AuthWidgetTree> createState() => _AuthWidgetTreeState();
}

class _AuthWidgetTreeState extends State<AuthWidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        // if (snapshot.connectionState == ConnectionState.waiting) {
        //   return const LoadingScreen();
        // }
        if (snapshot.hasData) {
          print('navigation');
          return const Navigation();
        } else {
          print('welcome');
          return LandingScreen1();
        }
      },
    );
  }
}
