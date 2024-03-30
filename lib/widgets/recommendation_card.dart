import 'package:flutter/material.dart';
import 'package:green/data/recommendations.dart';
import 'package:green/model/recommendation_model.dart';
import 'package:green/presets/colors.dart';
import 'package:green/presets/fonts.dart';
import 'package:green/presets/styles.dart';

class RecommendationCard extends StatelessWidget {
  const RecommendationCard({
    super.key,
    required this.recommendation,
    required this.margin,
    this.showButton =
        true, // Add a parameter to control the visibility of the button
  });

  final Recommendation recommendation;
  final EdgeInsets margin;
  final bool showButton; // Parameter to control button visibility

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: MediaQuery.of(context).size.width - 30,
      height: MediaQuery.of(context).size.height * 0.12,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xff252525).withOpacity(0.05),
        borderRadius: AppStyles.borderRadiusAll,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: AppStyles.borderRadiusAll,
            child: Image.asset(
              recommendation.image,
              width: MediaQuery.of(context).size.height * 0.1,
              height: MediaQuery.of(context).size.height * 0.1,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                recommendation.title,
                style: AppFonts.smallLightText,
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Image.asset(
                    "lib/assets/images/greenpts.png",
                    width: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    recommendation.greenPts,
                    style: AppFonts.extraSmallLightText,
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                recommendation.price,
                style: AppFonts.extraSmallLightText,
              ),
            ],
          ),
          Spacer(),
          if (showButton) // Conditionally show the button based on the parameter
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                padding: MaterialStatePropertyAll(EdgeInsets.zero),
                backgroundColor:
                    MaterialStatePropertyAll(AppColor.btnColorPrimary),
                shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(999.0),
                  ),
                ),
                minimumSize:
                    MaterialStateProperty.all(Size(45, 45)), // Set minimum size
              ),
              child: Image.asset(
                "lib/assets/icons/plus.png",
                width: 15,
                height: 15,
              ),
            )
        ],
      ),
    );
  }
}
