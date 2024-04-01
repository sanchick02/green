<<<<<<< HEAD:lib/screens/landing/landing_screen.dart
import 'package:flutter/material.dart';
import 'package:green/presets/colors.dart';
import 'package:green/presets/fonts.dart';
import 'package:green/screens/auth/auth_screen.dart';
import 'package:green/widgets/button.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "lib/assets/images/grad.png",
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "lib/assets/images/logo.png",
                  width: 280,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Explore Responsibly,",
                  style: AppFonts.smallLightText,
                ),
                Text(
                  "Wander Elegantly.",
                  style: AppFonts.smallLightText,
                ),
                SizedBox(
                  height: 80,
                ),
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    DefaultButton(
                      backgroundColor: AppColor.btnColorPrimary,
                      text: "Explore 6reen",
                      press: () {
                        Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => AuthScreen()));
                      },
                      height: 60,
                      fontStyle: AppFonts.normalRegularTextWhite,
                      width: 250,
                      padding: EdgeInsets.zero,
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 15),
                      height: 60,
                      child: Image.asset(
                        "lib/assets/icons/arrow_next_white_big.png",
                        width: 40,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
=======
import 'package:flutter/material.dart';
import 'package:green/presets/colors.dart';
import 'package:green/presets/fonts.dart';
import 'package:green/screens/auth/auth_screen.dart';
import 'package:green/widgets/button.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "lib/assets/images/grad.png",
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "lib/assets/images/logo.png",
                  width: 280,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Explore Responsibly,",
                  style: AppFonts.smallLightText,
                ),
                Text(
                  "Wander Elegantly.",
                  style: AppFonts.smallLightText,
                ),
                SizedBox(
                  height: 80,
                ),
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    DefaultButton(
                      backgroundColor: AppColor.btnColorPrimary,
                      text: "Explore 6reen",
                      press: () {
                        Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => AuthScreen()));
                      },
                      height: 60,
                      fontStyle: AppFonts.normalRegularTextWhite,
                      width: 250,
                      padding: EdgeInsets.zero,
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 15),
                      height: 60,
                      child: Image.asset(
                        "lib/assets/icons/arrow_next_white_big.png",
                        width: 40,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
>>>>>>> abdulaaaaaa:lib/screens/landing_screen.dart
