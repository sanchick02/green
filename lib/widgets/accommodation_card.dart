import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:green/presets/colors.dart';
import 'package:green/presets/fonts.dart';
import 'package:green/presets/styles.dart';

class AccommodationCard extends StatelessWidget {
  const AccommodationCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: AppStyles.edgeInsetsLR,
      padding: EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      constraints: BoxConstraints(minHeight: 150),
      decoration: BoxDecoration(
        color: AppColor.lightGrey,
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
                  "lib/assets/images/hotel1.png",
                  width: MediaQuery.of(context).size.width * 0.25,
                  height: MediaQuery.of(context).size.width * 0.25,
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
                  "Sutera Avenue",
                  style: AppFonts.smallRegularText,
                ),
                Text(
                  "Sutera Avenue Block B, Lobby 3, 2nd Floor, Unit 32, 88100 Kota Kinabalu, Malaysia",
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
                  "MYR 233.99",
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
