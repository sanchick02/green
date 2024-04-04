import 'package:flutter/material.dart';
import 'package:green/data/nowaste_posts.dart';
import 'package:green/presets/colors.dart';
import 'package:green/presets/fonts.dart';
import 'package:green/presets/styles.dart';
import 'package:green/widgets/button.dart';
import 'package:green/widgets/begreen_card.dart';
import 'package:green/widgets/topbar_logo_notif.dart';

class BeGreenCommunityScreen extends StatelessWidget {
  const BeGreenCommunityScreen({super.key});

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
            child: SingleChildScrollView(
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
                          "BeGreen",
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
                              beGreenCardList.length,
                              (index) => BeGreenCard(
                                beGreenCard: beGreenCardList[index],
                                margin: EdgeInsets.only(
                                  left: 15,
                                  right: index == beGreenCardList.length - 1
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
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset(
                          "lib/assets/images/begreen.png",
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: Column(
                            children: [
                              Text(
                                "HEY SAM",
                                style: AppFonts.heading3White,
                              ),
                              Text(
                                "It’s time for BeGreen.",
                                style: AppFonts.smallLightTextWhite,
                              ),
                              Text(
                                "Take a photo of your green efforts and share it with the community!",
                                style: AppFonts.smallLightTextWhite,
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "and,",
                                style: AppFonts.smallLightTextWhite,
                              ),
                              Text(
                                "To Earn Green Points.",
                                style: AppFonts.smallLightTextWhite,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Image.asset(
                                "lib/assets/images/greenpts.png",
                                width: 70,
                              )
                            ],
                          ),
                        ),
                      ],
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
                  SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
