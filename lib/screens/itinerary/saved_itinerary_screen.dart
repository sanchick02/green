import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:green/data/upcoming_trips.dart';
import 'package:green/presets/colors.dart';
import 'package:green/presets/fonts.dart';
import 'package:green/presets/shadow.dart';
import 'package:green/presets/styles.dart';
import 'package:green/widgets/divider_line.dart';
import 'package:green/widgets/itinerary_card.dart';
import 'package:green/widgets/upcomingtrips_carousel.dart';

class SavedItineraryScreen extends StatelessWidget {
  const SavedItineraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: AppStyles.edgeInsetsLR,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      "lib/assets/icons/arrow_back_gray_small.png",
                      width: 40,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Image.asset(
                    "lib/assets/images/topbar_logo.png",
                    width: 80,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: AppStyles.edgeInsetsLR,
                child: Text(
                  "My Saved Itineraries",
                  style: AppFonts.largeMediumText,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              ClipRRect(
                borderRadius: AppStyles.borderRadiusAll,
                child: CarouselSlider(
                  items: upcomingTripList.map((item) {
                    return Column(
                      children: [
                        Expanded(
                          child: Stack(
                            children: [
                              Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width - 30,
                                    constraints: BoxConstraints(minHeight: 100),
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        AppShadow.innerShadow3,
                                        AppShadow.innerShadow4,
                                      ],
                                      borderRadius: AppStyles.borderRadiusAll,
                                      gradient: AppColor.blackGradient(),
                                    ),
                                  ),
                                  Image.asset(
                                    item.image,
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                  ),
                                  ClipRRect(
                                    borderRadius: AppStyles.borderRadiusBottom,
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          AppShadow.innerShadow3,
                                          AppShadow.innerShadow4,
                                        ],
                                        borderRadius:
                                            AppStyles.borderRadiusBottom,
                                        gradient: AppColor.blackGradient(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 10,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      item.destinationName,
                                      style: AppFonts.normalRegularTextWhite,
                                    ),
                                    Text(
                                      "MAY 30, 2024 - JUNE 3, 2024",
                                      style: AppFonts.extraSmallLightTextWhite,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ItineraryCard(
                          title: "Immerse in Sabah's Culture",
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    );
                  }).toList(),
                  options: CarouselOptions(
                    // autoPlayInterval: const Duration(seconds: 4),
                    autoPlay: false,
                    height: MediaQuery.of(context).size.height,
                    aspectRatio: 2.0,
                    viewportFraction: 1.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
