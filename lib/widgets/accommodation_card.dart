import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:green/presets/colors.dart';
import 'package:green/presets/fonts.dart';
import 'package:green/presets/styles.dart';

class AccommodationCard extends StatelessWidget {
  const AccommodationCard({
    required this.title,
    required this.destinationName,
    required this.price,
    required this.image,
    super.key,
  });

  final String title;
  final String destinationName;
  final double price;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: AppStyles.edgeInsetsLR,
      padding: EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      constraints: BoxConstraints(minHeight: 150),
      decoration: BoxDecoration(
        color: AppColor.extraLightGrey,
        borderRadius: AppStyles.borderRadiusAll,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: AppStyles.borderRadiusAll,
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Image.asset(
                  image,
                  width: MediaQuery.of(context).size.width * 0.25,
                  height: MediaQuery.of(context).size.width * 0.25,
                  fit: BoxFit.cover,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.25,
                  height: MediaQuery.of(context).size.width * 0.25,
                  decoration: BoxDecoration(
                    gradient: AppColor.whiteGradient2(),
                  ),
                ),
                Row(
                  children: [
                    Image.asset(
                      "lib/assets/icons/rating.png",
                      width: 12,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "4.9",
                      style: AppFonts.extraSmallLightText,
                    )
                  ],
                )
              ],
            ),
          ),
          Spacer(),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppFonts.smallRegularText,
                ),
                Text(
                  (destinationName + ", Malaysia"),
                  style: AppFonts.smallestLightText,
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Image.asset(
                      "lib/assets/images/greenpts.png",
                      width: 20,
                    ),
                    Text(
                      "+100 Green Pts",
                      style: AppFonts.smallestLightText,
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "MYR " + price.toString(),
                  style: AppFonts.smallLightText,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
