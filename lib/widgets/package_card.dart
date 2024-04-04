import 'package:flutter/material.dart';
import 'package:green/presets/colors.dart';
import 'package:green/presets/fonts.dart';
import 'package:green/presets/styles.dart';

class PackageCard extends StatelessWidget {
  const PackageCard({
    required this.title,
    required this.description,
    required this.price,
    required this.image,
    super.key,
  });

  final String title;
  final double price;
  final String image;
  final String description;

  @override
  Widget build(BuildContext context) {

    String shortDescription = description.substring(0, 50);

    return ClipRRect(
      borderRadius: AppStyles.borderRadiusAll,
      child: Stack(
        children: [
          Image.asset(
            image,
            fit: BoxFit.cover,
            width: double.infinity,
            height: 180,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: AppStyles.borderRadiusBottom,
              gradient: AppColor.blackGradient(),
            ),
            width: double.infinity,
            height: 180,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    title,
                    style: AppFonts.normalRegularTextWhite,
                  ),
                  Text(
                    "Price From: MYR " + price.toString(),
                    style: AppFonts.extraSmallLightTextWhite,
                  ),
                  Text(
                    shortDescription,
                    style: AppFonts.extraSmallLightTextWhite,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
