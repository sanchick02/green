import 'dart:ui';

import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;

import 'package:rive/rive.dart' as rive;

class AnimationScreen extends StatelessWidget {
  const AnimationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        // onTap: () => navigateNextPage(context, const AuthWidgetTree()),
        child: Stack(
          children: [
            Image.asset(
              "lib/assets/images/grad.png",
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
            Container(
              color: const Color.fromARGB(255, 74, 158, 160).withOpacity(0.5),
            ),
            const rive.RiveAnimation.asset(
              "lib/assets/rive/geometric_shapes.riv",
            ),
            BackdropFilter(
              filter: ImageFilter.blur(
                  sigmaX: 30.0,
                  sigmaY: 30.0), // Adjust the sigma values as needed
              child: const rive.RiveAnimation.asset(
                "lib/assets/rive/text_anim.riv",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
