import 'package:flutter/material.dart';
import 'package:green/presets/colors.dart';
import 'package:green/presets/fonts.dart';

class FilterButton extends StatelessWidget {
  final bool isButtonClicked;
  final VoidCallback onPressed;
  final double buttonWidth;
  final String text;

  const FilterButton({
    required this.isButtonClicked,
    required this.onPressed,
    required this.buttonWidth,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: buttonWidth,
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            isButtonClicked
                ? AppColor.btnColorPrimary
                : Color(0xff252525).withOpacity(0.05),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
        child: Text(
          text,
          style: isButtonClicked
              ? AppFonts.extraSmallLightTextWhite
              : AppFonts.extraSmallLightText,
        ),
      ),
    );
  }
}
