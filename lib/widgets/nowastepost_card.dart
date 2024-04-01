import 'package:flutter/material.dart';
import 'package:green/model/nowaste_posts_model.dart';
import 'package:green/presets/colors.dart';
import 'package:green/presets/fonts.dart';
import 'package:green/presets/styles.dart';

class NoWastePostCard extends StatelessWidget {
  const NoWastePostCard({
    Key? key,
    required this.noWastePost,
    required this.margin,
  }) : super(key: key);

  final NoWastePost noWastePost;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    // Get the screen width
    final screenWidth = MediaQuery.of(context).size.width;
    // Calculate the card width based on screen width
    final cardWidth = (screenWidth - 60) / 3;
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          width: cardWidth,
          height: cardWidth * 1.5,
          margin: margin,
          child: ClipRRect(
            borderRadius: AppStyles.borderRadiusAll,
            child: Image.asset(
              noWastePost.image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        ClipRRect(
          borderRadius: AppStyles.borderRadiusBottom,
          child: Container(
            padding: EdgeInsets.only(bottom: 10),
            margin: margin,
            width: cardWidth,
            height: cardWidth,
            decoration: BoxDecoration(
              gradient: AppColor.blackGradient2(),
              borderRadius: AppStyles.borderRadiusBottom,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  noWastePost.greenPts,
                  style: AppFonts.smallLightTextWhite,
                ),
                SizedBox(
                  width: 3,
                ),
                Image.asset(
                  "lib/assets/images/greenpts.png",
                  width: 25,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
