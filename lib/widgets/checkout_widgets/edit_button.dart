import 'package:flutter/material.dart';
import 'package:green/presets/colors.dart';

class EditButtonCheckout extends StatelessWidget {
  const EditButtonCheckout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50, // Adjust width as needed
      height: 50, // Adjust height as needed
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColor.btnColorPrimary, // Example color
        ),
      child: IconButton(
        onPressed: () {},
        icon: Image.asset(
          'lib/assets/icons/edit_button_icon.png',
          width: 30,),
      ),
    );
  }
}