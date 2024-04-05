import 'package:flutter/material.dart';
import 'package:green/presets/colors.dart';
import 'package:green/presets/fonts.dart';
import 'package:green/presets/styles.dart';
import 'package:green/screens/explore/explore_detail_screen.dart';
import 'package:green/widgets/back_button_top.dart';
import 'package:green/widgets/button.dart';

class ExploreDestinationsScreen extends StatelessWidget {
  final List<String> imageList = [
    'lib/assets/images/langkawi.png',
    'lib/assets/images/penang.png',
    'lib/assets/images/genting.png',
    'lib/assets/images/batu_caves.png'
  ];
  final List<String> destinationList = [
    'Langkawi',
    'Penang',
    'Genting Highland',
    'Batu Caves'
  ];
  final List<String> categoryList = [
    'Beach',
    'Food',
    'High-Altitude',
    'Nature'
  ];
  final List<String> shortDescriptionList = [
    'Where relaxation meets adventure, offering island hopping, jungle treks, and water sports amidst stunning scenery.',
    'A vibrant island destination celebrated for its rich cultural heritage, delicious street food, and colonial architecture.',
    'Malaysia\'s high-altitude getaway, boasting luxury resorts, shopping malls, and adrenaline-pumping adventures.',
    ' Iconic limestone caves in Selangor, Malaysia, renowned for their Hindu temples and vibrant religious festivals.'
  ];

  ExploreDestinationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(gradient: AppColor.backgroundGradient()),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BackButtonTop(onBackButtonPressed: () {
                            Navigator.pop(context);
                          }),
                          Spacer(),
                          Image.asset(
                            'lib/assets/images/topbar_logo.png',
                            width: 100,
                          ),
                          SizedBox(
                            width:
                                (MediaQuery.of(context).size.width - 135) / 2,
                            height: 50,
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          'Explore by Destinations',
                          style: AppFonts.largeMediumText,
                        ),
                      ),

                      const SizedBox(
                        height: 10,
                      ), // Search Bar
                      Text(
                        'Popular Destinations in West Malaysia',
                        style: AppFonts.normalRegularText,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                // List view for destinations
                Flexible(
                  child: SingleChildScrollView(
                    child: Column(
                      children: destinationList.asMap().entries.map((entry) {
                        final int index = entry.key;
                        final String destination = entry.value;
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Container(
                            color: const Color(0xff252525).withOpacity(0.05),
                            width: double.infinity,
                            child: IntrinsicHeight(
                              child: Row(
                                children: [
                                  Image.asset(
                                    imageList[index],
                                    width:
                                        MediaQuery.of(context).size.width * 0.4,
                                    height:
                                        MediaQuery.of(context).size.width * 0.6,
                                    fit: BoxFit.cover,
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            destination,
                                            style: AppFonts.normalRegularText,
                                          ),
                                          const SizedBox(height: 5),
                                          Container(
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  AppStyles.borderRadiusAll,
                                              color: AppColor.lightGrey,
                                            ),
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.5,
                                            child: Text(
                                              categoryList[index],
                                              style:
                                                  AppFonts.extraSmallLightText,
                                            ),
                                          ),
                                          const SizedBox(height: 8),
                                          Container(
                                            constraints: const BoxConstraints(
                                                minHeight: 50),
                                            child: Text(
                                              shortDescriptionList[index],
                                              style:
                                                  AppFonts.extraSmallLightText,
                                            ),
                                          ),
                                          const Spacer(),
                                          DefaultButton(
                                            text: "More Info",
                                            press: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      ExploreDetailScreen(
                                                    destinationName:
                                                        destination,
                                                    locationTag:
                                                        categoryList[index],
                                                  ),
                                                ),
                                              );
                                            },
                                            backgroundColor:
                                                AppColor.btnColorPrimary,
                                            height: 35,
                                            fontStyle: AppFonts
                                                .extraSmallLightTextWhite,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.5,
                                            padding: EdgeInsets.zero,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
