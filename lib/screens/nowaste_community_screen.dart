import 'package:flutter/material.dart';
import 'package:green/data/nowaste_posts.dart';
import 'package:green/presets/colors.dart';
import 'package:green/presets/fonts.dart';
import 'package:green/presets/styles.dart';
import 'package:green/widgets/button.dart';
import 'package:green/widgets/nowastepost_card.dart';
import 'package:green/widgets/topbar_logo_notif.dart';

class NoWasteCommunityScreen extends StatelessWidget {
  const NoWasteCommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "lib/assets/images/grad1.png",
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          SafeArea(
            child: Column(
              children: [
                const TopBarLogoNotif(),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "NoWaste",
                        style: AppFonts.largeMediumText,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: List.generate(
                            noWastePostList.length,
                            (index) => NoWastePostCard(
                              noWastePost: noWastePostList[index],
                              margin: EdgeInsets.only(
                                left: 15,
                                right: index == noWastePostList.length - 1
                                    ? 15
                                    : 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  margin: AppStyles.edgeInsetsLR,
                  child: Image.asset(
                    "lib/assets/images/nowasteblur.png",
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: AppStyles.edgeInsetsLR,
                  child: DefaultButton(
                    text: "Take a Photo",
                    press: () {},
                    backgroundColor: AppColor.btnColorPrimary,
                    height: 40,
                    fontStyle: AppFonts.normalRegularTextWhite,
                    width: double.infinity,
                    padding: EdgeInsets.zero,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
