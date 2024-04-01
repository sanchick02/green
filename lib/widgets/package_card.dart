import 'package:flutter/material.dart';
import 'package:green/presets/colors.dart';
import 'package:green/presets/fonts.dart';
import 'package:green/presets/styles.dart';

class PackageCard extends StatelessWidget {
  const PackageCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: AppStyles.borderRadiusAll,
      child: Stack(
        children: [
          Image.asset(
            "lib/assets/images/package1.jpg",
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
                    "3D2N Snorkeling Package",
                    style: AppFonts.normalRegularTextWhite,
                  ),
                  Text(
                    "Price From: MYR 480",
                    style: AppFonts.extraSmallLightTextWhite,
                  ),
                  Text(
                    """• Comfortable Mabul Backpackers Longhouse,
• Full board (buffet-style: breakfast, lunch, dinner)""",
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
