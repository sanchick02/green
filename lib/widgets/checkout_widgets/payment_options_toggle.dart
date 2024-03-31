import 'package:flutter/material.dart';
import 'package:green/presets/colors.dart';

class PaymentOptionsToggle extends StatelessWidget {
  final bool isSelected;
  final VoidCallback onPressed;
  final String image;

  const PaymentOptionsToggle({
    Key? key,
    required this.isSelected,
    required this.onPressed,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 80,
        height: 40,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          //border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(20),
          color: isSelected ? AppColor.btnColorPrimary.withOpacity(0.6) : Colors.white,
        ),
        child: Image.asset(
          image,
          width: 50,
        ),
      ),
    );
  }
}