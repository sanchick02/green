import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:green/screens/explore/explore_destinations_screen.dart';
import 'package:rive/rive.dart' as rive;

class EastWestStatsScreen extends StatefulWidget {
  const EastWestStatsScreen({super.key});

  @override
  State<EastWestStatsScreen> createState() => _EastWestStatsScreenState();
}

class _EastWestStatsScreenState extends State<EastWestStatsScreen> {
  bool isTappedFirst = false;
  bool isTappedSecond = false;
  bool isTappedThird = false;
  bool isTappedFourth = false;

  @override
  Widget build(BuildContext context) {
    if (isTappedFourth) {
      // Navigate to home screen
      Future.microtask(() {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => ExploreDestinationsScreen(),
          ),
        );
      });
    }

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              "lib/assets/images/grad.png",
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isTappedFirst = true;
                });
              },
              child: isTappedFirst
                  ? GestureDetector(
                      onTap: () {
                        setState(() {
                          isTappedSecond = true;
                        });
                      },
                      child: isTappedSecond
                          ? GestureDetector(
                              onTap: () {
                                setState(() {
                                  isTappedThird = true;
                                });
                              },
                              child: isTappedThird
                                  ? GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          isTappedFourth = true;
                                        });
                                      },
                                      child: const rive.RiveAnimation.asset(
                                        "lib/assets/rive/tree.riv",
                                      ),
                                    )
                                  : const rive.RiveAnimation.asset(
                                      "lib/assets/rive/carbon.riv",
                                    ),
                            )
                          : const rive.RiveAnimation.asset(
                              "lib/assets/rive/tourists.riv",
                            ),
                    )
                  : const rive.RiveAnimation.asset(
                      "lib/assets/rive/didyouknow.riv",
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

