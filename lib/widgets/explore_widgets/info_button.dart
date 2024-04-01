import 'package:flutter/material.dart';
import 'package:green/presets/fonts.dart';

class InfoButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  InfoButton({required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        height: 27,
        //width: 100,
        child: ElevatedButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: AppFonts.extraSmallLightTextWhite,
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5)
              )
            ),
        ),
      ),
    );
  }
}
