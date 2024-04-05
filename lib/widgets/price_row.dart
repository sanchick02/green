import 'package:flutter/material.dart';
import 'package:green/presets/colors.dart';
import 'package:green/presets/fonts.dart';
import 'package:green/presets/styles.dart';

class PriceRow extends StatelessWidget {
  const PriceRow({
    super.key,
    required this.price,
  });

  final double price;

  @override
  Widget build(BuildContext context) {
    double priceAfterReduction = price * 0.95;

    return Row(
      children: [
        Text(
          "From: MYR " + price.toStringAsFixed(2),
          style: AppFonts.smallLightText,
        ),
        const SizedBox(
          width: 10,
        ),
        const Text(
          "-5% OFF",
          style: TextStyle(
            fontFamily: "LeagueSpartan",
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.red,
            // height: 0,
          ),
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 5,
          ),
          width: 120,
          constraints: const BoxConstraints(minHeight: 50),
          decoration: BoxDecoration(
            color: AppColor.lightGrey,
            borderRadius: AppStyles.borderRadiusAll,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "MYR " + priceAfterReduction.toStringAsFixed(2),
                style: AppFonts.smallRegularText,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "with 150",
                    style: AppFonts.extraSmallLightText,
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Image.asset(
                    "lib/assets/images/greenpts.png",
                    width: 20,
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
