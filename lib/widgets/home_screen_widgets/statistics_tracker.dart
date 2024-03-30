import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:green/presets/colors.dart';
import 'package:green/presets/fonts.dart';
import 'package:green/presets/shadow.dart';
import 'package:green/presets/styles.dart';

class StatisticsTracker extends StatelessWidget {
  const StatisticsTracker({
    super.key,
    required this.points,
  });

  final int points;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
      margin: EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 30),
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.2,
      decoration: BoxDecoration(
        color: AppColor.btnColorSecondary,
        borderRadius: AppStyles.borderRadiusAll,
        boxShadow: [
          AppShadow.innerShadow3,
          AppShadow.innerShadow4,
        ],
      ),
      child: Row(
        children: [
          Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "CO2 Offset (kg)",
                    style: AppFonts.extraSmallLightText,
                  ),
                  Text(
                    "65.87/100",
                    style: AppFonts.smallRegularText,
                  ),
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Places Traveled",
                    style: AppFonts.extraSmallLightText,
                  ),
                  Text(
                    "4/7",
                    style: AppFonts.smallRegularText,
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                width: 120,
                height: 120,
                child: CircularProgressIndicator(
                  strokeWidth: 4,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    AppColor.btnColorPrimary,
                  ),
                  // backgroundColor: Colors.transparent,
                  value: points *
                      80 /
                      100, // Assuming 100 points for full progress
                ),
              ),
              SizedBox(
                width: 100,
                height: 100,
                child: CircularProgressIndicator(
                  strokeWidth: 4,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Color(0xff51DCB5),
                  ),
                  // backgroundColor: Colors.transparent,
                  value: points *
                      50 /
                      100, // Assuming 100 points for full progress
                ),
              ),
              SizedBox(
                width: 80,
                height: 80,
                child: CircularProgressIndicator(
                  strokeWidth: 4,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Color(0xffB2D2FB),
                  ),
                  // backgroundColor: Colors.transparent,
                  value: points *
                      70 /
                      100, // Assuming 100 points for full progress
                ),
              ),
              SizedBox(
                width: 60,
                height: 60,
                child: CircularProgressIndicator(
                  strokeWidth: 4,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Color(0xffC0FF58),
                  ),
                  // backgroundColor: Colors.transparent,
                  value: points *
                      90 /
                      100, // Assuming 100 points for full progress
                ),
              ),
              Container(
                width: 90,
                height: 90,
                padding: EdgeInsets.only(top: 20, bottom: 15),
                child: Column(
                  children: [
                    Image.asset(
                      "lib/assets/images/greenpts.png",
                      width: 25,
                      height: 25,
                    ),
                    Text(
                      "420",
                      style: AppFonts.smallRegularText,
                    ),
                  ],
                ),
              )
            ],
          ),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Water Saved (litre)",
                    style: AppFonts.extraSmallLightText,
                  ),
                  Text(
                    "8.8/10",
                    style: AppFonts.smallRegularText,
                  ),
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "NoWaste",
                    style: AppFonts.extraSmallLightText,
                  ),
                  Text(
                    "4/10",
                    style: AppFonts.smallRegularText,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
