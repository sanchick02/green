// For Login and SignUp Screen Only

import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:green/presets/colors.dart';
import 'package:green/presets/fonts.dart';
import 'package:green/presets/shadow.dart';
import 'package:green/presets/styles.dart';
import 'package:green/widgets/back_button_top.dart';

class TopBar extends StatelessWidget {
  final String title;
  final VoidCallback onBackButtonPressed;
  final EdgeInsets padding;

  const TopBar({
    Key? key,
    required this.title,
    required this.onBackButtonPressed,
    required this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 175,
      decoration: BoxDecoration(
          color: AppColor.fontColorSecondary,
          borderRadius: AppStyles.borderRadiusBottom,
          boxShadow: [
            AppShadow.innerShadow2,
          ]),
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BackButtonTop(onBackButtonPressed: onBackButtonPressed),
            Padding(
              padding: padding,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Image.asset(
                      "lib/assets/images/logo_auth.png",
                      width: 100,
                    ),
                  ),
                  Text(
                    title,
                    style: AppFonts.heading2,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
