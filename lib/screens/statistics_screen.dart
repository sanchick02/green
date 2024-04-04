import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:green/data/upcoming_trips.dart';
import 'package:green/presets/colors.dart';
import 'package:green/presets/fonts.dart';
import 'package:green/presets/shadow.dart';
import 'package:green/presets/styles.dart';
import 'package:green/screens/upcomingtrip_details_screen.dart';
import 'package:green/widgets/button.dart';
import 'package:green/widgets/itinerary_card.dart';
import 'package:green/widgets/radial_gauge.dart';

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          // padding: AppStyles.edgeInsetsLR,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Image.asset(
                      "lib/assets/icons/arrow_back_gray_small.png",
                      width: 40,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Image.asset(
                    "lib/assets/images/topbar_logo.png",
                    width: 80,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: AppStyles.edgeInsetsLR,
                child: Text(
                  "My Statistics",
                  style: AppFonts.largeMediumText,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Column(
                children: [
                  Container(
                    margin: AppStyles.edgeInsetsLR,
                    width: double.infinity,
                    height: 180,
                    decoration: BoxDecoration(
                      borderRadius: AppStyles.borderRadiusAll,
                    ),
                    child: ClipRRect(
                      borderRadius: AppStyles.borderRadiusAll,
                      child: Image.asset(
                        "lib/assets/images/stats1.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    margin: AppStyles.edgeInsetsLR,
                    width: double.infinity,
                    height: 180,
                    decoration: BoxDecoration(
                      borderRadius: AppStyles.borderRadiusAll,
                    ),
                    child: ClipRRect(
                      borderRadius: AppStyles.borderRadiusAll,
                      child: Image.asset(
                        "lib/assets/images/stats2.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    margin: AppStyles.edgeInsetsLR,
                    width: double.infinity,
                    height: 180,
                    decoration: BoxDecoration(
                      borderRadius: AppStyles.borderRadiusAll,
                    ),
                    child: ClipRRect(
                      borderRadius: AppStyles.borderRadiusAll,
                      child: Image.asset(
                        "lib/assets/images/stats3.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    margin: AppStyles.edgeInsetsLR,
                    width: double.infinity,
                    height: 180,
                    decoration: BoxDecoration(
                      borderRadius: AppStyles.borderRadiusAll,
                    ),
                    child: ClipRRect(
                      borderRadius: AppStyles.borderRadiusAll,
                      child: Image.asset(
                        "lib/assets/images/stats4.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
