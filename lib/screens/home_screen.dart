import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:green/data/destinations.dart';
import 'package:green/model/destination_model.dart';
import 'package:green/presets/colors.dart';
import 'package:green/presets/fonts.dart';
import 'package:green/presets/shadow.dart';
import 'package:green/presets/styles.dart';
import 'package:green/widgets/button.dart';
import 'package:green/widgets/destination_card.dart';
import 'package:green/widgets/topbar_logo_notif.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    int points = 0;
    // Filter destinationList to include only destinations with "state" as "Sabah"
    final sabahDestinations = destinationList
        .where((destination) => destination.state == 'Sabah')
        .toList();

    final sarawakDestinations = destinationList
        .where((destination) => destination.state == 'Sarawak')
        .toList();

    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: Stack(
        children: [
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Welcome, Sam!",
                          style: AppFonts.largeMediumText,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: 15, right: 15, top: 10, bottom: 30),
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
                            Row(
                              children: [],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Sabah",
                          style: AppFonts.largeMediumText,
                        ),
                        DefaultButton(
                          text: "See All",
                          press: () {},
                          backgroundColor: AppColor.btnColorPrimary,
                          height: 35,
                          fontStyle: AppFonts.smallLightTextWhite,
                          width: 100,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 8),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: List.generate(
                        sabahDestinations.length,
                        (index) => DestinationCard(
                          destination: sabahDestinations[index],
                          margin: EdgeInsets.only(
                            left: 15,
                            right:
                                index == sabahDestinations.length - 1 ? 15 : 0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Sarawak",
                          style: AppFonts.largeMediumText,
                        ),
                        DefaultButton(
                          text: "See All",
                          press: () {},
                          backgroundColor: AppColor.btnColorPrimary,
                          height: 35,
                          fontStyle: AppFonts.smallLightTextWhite,
                          width: 100,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 8),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: List.generate(
                        sarawakDestinations.length,
                        (index) => DestinationCard(
                          destination: sarawakDestinations[index],
                          margin: EdgeInsets.only(
                            left: 15,
                            right: index == sarawakDestinations.length - 1
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
          ),
        ],
      ),
    );
  }
}
