import 'package:flutter/material.dart';
import 'package:green/presets/colors.dart';
import 'package:green/presets/fonts.dart';
import 'package:green/screens/auth/login_form.dart';
import 'package:green/screens/auth/signup_form.dart';
import 'package:green/widgets/divider_line.dart';
import 'package:green/widgets/auth_widgets/toggle_switch_auth.dart';
import 'package:green/widgets/auth_widgets/auth_topbar.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool isMember = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopBar(
              title: isMember ? "LOGIN" : "SIGN UP",
              padding: isMember
                  ? const EdgeInsets.only(right: 135)
                  : const EdgeInsets.only(right: 118),
              onBackButtonPressed: () {
                Navigator.pop(context);
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        "Already have an account?",
                        style: AppFonts.smallRegularText,
                      ),
                      const Expanded(child: SizedBox()),
                      switchForm(context),
                    ],
                  ),
                  const DividerLine(),
                  Column(
                    children: [
                      isMember ? const LoginForm() : const SignUpForm(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  ToggleSwitchAuth switchForm(BuildContext context) {
    return ToggleSwitchAuth(
      isMember: isMember,
      onToggle: (value) {
        setState(() {
          isMember = value;
        });
      },
    );
  }
}
