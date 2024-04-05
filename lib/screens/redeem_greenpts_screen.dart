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

class RedeemGreenPtsScreen extends StatelessWidget {
  const RedeemGreenPtsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(gradient: AppColor.backgroundGradient()),
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
                    "Redeem Green Points",
                    style: AppFonts.largeMediumText,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  width: double.infinity,
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(15),
                        width: double.infinity,
                        constraints: const BoxConstraints(minHeight: 50),
                        decoration: BoxDecoration(
                          color: AppColor.fontColorSecondary,
                          borderRadius: AppStyles.borderRadiusAll,
                          boxShadow: [
                            AppShadow.innerShadow3,
                            AppShadow.innerShadow4
                          ],
                        ),
                        child: Column(
                          children: [
                            Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                SizedBox(
                                  width: double.infinity,
                                  height: 250,
                                  child: RadialGaugeWidget(),
                                ),
                                Column(
                                  children: [
                                    Image.asset(
                                      "lib/assets/images/greenpts.png",
                                      width: 40,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "SILVER",
                                      style: AppFonts.normalRegularText,
                                    ),
                                    Text(
                                      "320 points left to GOLD",
                                      style: AppFonts.smallLightText,
                                    ),
                                  ],
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  "lib/assets/images/barcode.png",
                                  width: 230,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: AppStyles.edgeInsetsLR,
                  child: Text(
                    "Vouchers and Coupons",
                    style: AppFonts.normalRegularText,
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
                          "lib/assets/images/sabahoff.png",
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
                          "lib/assets/images/sarawakoff.jpg",
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
                          "lib/assets/images/airasia.webp",
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
      ),
    );
  }
}
