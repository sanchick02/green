import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:green/data/destinations.dart';
import 'package:green/presets/colors.dart';
import 'package:green/presets/fonts.dart';
import 'package:green/presets/shadow.dart';
import 'package:green/presets/styles.dart';
import 'package:green/widgets/button.dart';
import 'package:green/widgets/destination_card.dart';
import 'package:green/widgets/home_screen_widgets/statistics_tracker.dart';
import 'package:green/widgets/package_carousel.dart';
import 'package:green/widgets/topbar_logo_notif.dart';
import 'package:green/widgets/upcomingtrips_carousel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int carouselCurrentIndex = 0;

  @override
  Widget build(BuildContext context) {
    int points = 1;
    // Filter destinationList to include only destinations with "state" as "Sabah"
    final sabahDestinations = destinationList
        .where((destination) => destination.location == 'Sabah')
        .toList();

    final sarawakDestinations = destinationList
        .where((destination) => destination.location == 'Sarawak')
        .toList();

    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SafeArea(
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
              StatisticsTracker(points: points),
              Container(
                padding: const EdgeInsets.only(left: 15, right: 15),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Where To?",
                      style: AppFonts.largeMediumText,
                    ),
                    // Search Bar Text Form Field - add later
                  ],
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Container(
                padding: const EdgeInsets.only(left: 15, right: 15),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Your Upcoming Trip",
                      style: AppFonts.normalRegularText,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    UpcomingTripCarousel(),
                    ClipRRect(
                      borderRadius: AppStyles.borderRadiusBottom,
                      child: Container(
                        width: double.infinity,
                        // height: 220 * 0.5,
                        decoration: BoxDecoration(
                          boxShadow: [
                            AppShadow.innerShadow3,
                            AppShadow.innerShadow4,
                          ],
                          gradient: AppColor.whiteGradient(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
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
                      "Limited Packages You May Also Like",
                      style: AppFonts.normalRegularText,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const PackageCarousel(
                      showOffer: true,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Sabah",
                      style: AppFonts.normalRegularText,
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
                        right: index == sabahDestinations.length - 1 ? 15 : 0,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
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
                        right: index == sarawakDestinations.length - 1 ? 15 : 0,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
