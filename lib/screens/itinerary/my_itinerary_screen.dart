import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:green/data/activities_data.dart';
import 'package:green/data/destinations.dart';
import 'package:green/page_navigator.dart';
import 'package:green/presets/colors.dart';
import 'package:green/presets/fonts.dart';
import 'package:green/presets/shadow.dart';
import 'package:green/presets/styles.dart';
import 'package:green/screens/itinerary/saved_itinerary_screen.dart';
import 'package:green/widgets/button.dart';
import 'package:green/widgets/custom_datepicker.dart';
import 'package:green/widgets/filter_button.dart';
import 'package:green/widgets/recommendation_card.dart';
import 'package:green/widgets/topbar_logo_notif.dart';
import 'package:green/widgets/upcomingtrips_carousel.dart';

class MyItineraryScreen extends StatefulWidget {
  const MyItineraryScreen({super.key});

  @override
  State<MyItineraryScreen> createState() => _MyItineraryScreenState();
}

class _MyItineraryScreenState extends State<MyItineraryScreen> {
  List<bool> buttonStates =
      List.filled(8, false); // List to track button states

  int? selectedStartDayValue;
  String? selectedStartMonthValue;
  int? selectedStartYearValue;
  int? selectedEndDayValue;
  String? selectedEndMonthValue;
  int? selectedEndYearValue;
  final _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final buttonWidth = (screenWidth - 60) / 4;
    return Scaffold(
      backgroundColor: Color(0xffD7E8FF),
      body: SafeArea(
          child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration:
                  BoxDecoration(gradient: AppColor.backgroundGradient()),
              child: SingleChildScrollView(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                              "My Itinerary",
                              style: AppFonts.largeMediumText,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Create an Itinerary",
                              style: AppFonts.normalRegularText,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            SizedBox(
                              width: double.infinity,
                              height: 40,
                              child: Stack(
                                alignment: Alignment.centerRight,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: AppColor.fontColorSecondary,
                                      boxShadow: [
                                        AppShadow.innerShadow3,
                                      ],
                                      borderRadius: AppStyles.borderRadiusAll,
                                    ),
                                  ),
                                  TextFormField(
                                    controller: _searchController,
                                    keyboardType: TextInputType.text,
                                    decoration: const InputDecoration(
                                      filled: true,
                                      fillColor: Colors.transparent,
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 15),
                                      border: OutlineInputBorder(
                                        borderRadius: AppStyles.borderRadiusAll,
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                    style: AppFonts.smallRegularText,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 15),
                                    child: Image.asset(
                                      "lib/assets/icons/search.png",
                                      width: 20,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Select Keywords of Your Interest",
                              style: AppFonts.smallRegularText,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            filterButtonsSection(buttonWidth),
                            const SizedBox(
                              height: 20, // TextFormField for search bar
                            ),
                            Text(
                              "Choose Your Date",
                              style: AppFonts.smallRegularText,
                            ),
                          ],
                        ),
                      ),
                      CustomDatePicker(
                        selectedStartDateValue: selectedStartDayValue,
                        selectedStartMonthValue: selectedStartMonthValue,
                        selectedStartYearValue: selectedStartYearValue,
                        selectedEndDateValue: selectedEndDayValue,
                        selectedEndMonthValue: selectedEndMonthValue,
                        selectedEndYearValue: selectedEndYearValue,
                        onStartDateChanged: (int? value) {
                          setState(() {
                            selectedStartDayValue = value;
                          });
                        },
                        onStartMonthChanged: (String? value) {
                          setState(() {
                            selectedStartMonthValue = value;
                          });
                        },
                        onStartYearChanged: (int? value) {
                          setState(() {
                            selectedStartYearValue = value;
                          });
                        },
                        onEndDateChanged: (int? value) {
                          setState(() {
                            selectedEndDayValue = value;
                          });
                        },
                        onEndMonthChanged: (String? value) {
                          setState(() {
                            selectedEndMonthValue = value;
                          });
                        },
                        onEndYearChanged: (int? value) {
                          setState(() {
                            selectedEndYearValue = value;
                          });
                        },
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: AppStyles.edgeInsetsLR,
                        child: Text(
                          "Recommended For You",
                          style: AppFonts.smallRegularText,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ...List.generate(
                              activityDetailList.length,
                              (index) => RecommendationCard(
                                margin: EdgeInsets.only(
                                    left: 15,
                                    right:
                                        index == activityDetailList.length - 1
                                            ? 15
                                            : 0),
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Your Upcoming Trips",
                              style: AppFonts.normalRegularText,
                            ),
                            DefaultButton(
                              text: "View Saved Itinerary",
                              press: () {
                                navigateNextPage(
                                    context, const SavedItineraryScreen());
                              },
                              backgroundColor: AppColor.btnColorPrimary,
                              height: 35,
                              fontStyle: AppFonts.extraSmallLightTextWhite,
                              width: 150,
                              padding: EdgeInsets.zero,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: AppStyles.edgeInsetsLR,
                        child: UpcomingTripCarousel(),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ))),
    );
  }

  Column filterButtonsSection(double buttonWidth) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FilterButton(
              text: "Beach",
              isButtonClicked: buttonStates[0],
              onPressed: () {
                setState(() {
                  buttonStates[0] = !buttonStates[0]; // Toggle button state
                });
              },
              buttonWidth: buttonWidth,
            ),
            FilterButton(
              text: "Nature",
              isButtonClicked: buttonStates[1],
              onPressed: () {
                setState(() {
                  buttonStates[1] = !buttonStates[1]; // Toggle button state
                });
              },
              buttonWidth: buttonWidth,
            ),
            FilterButton(
              text: "Wildlife",
              isButtonClicked: buttonStates[2],
              onPressed: () {
                setState(() {
                  buttonStates[2] = !buttonStates[2]; // Toggle button state
                });
              },
              buttonWidth: buttonWidth,
            ),
            FilterButton(
              text: "Cultural",
              isButtonClicked: buttonStates[3],
              onPressed: () {
                setState(() {
                  buttonStates[3] = !buttonStates[3]; // Toggle button state
                });
              },
              buttonWidth: buttonWidth,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FilterButton(
              text: "History",
              isButtonClicked: buttonStates[4],
              onPressed: () {
                setState(() {
                  buttonStates[4] = !buttonStates[4]; // Toggle button state
                });
              },
              buttonWidth: buttonWidth,
            ),
            FilterButton(
              text: "Marine",
              isButtonClicked: buttonStates[5],
              onPressed: () {
                setState(() {
                  buttonStates[5] = !buttonStates[5]; // Toggle button state
                });
              },
              buttonWidth: buttonWidth,
            ),
            FilterButton(
              text: "Hiking",
              isButtonClicked: buttonStates[6],
              onPressed: () {
                setState(() {
                  buttonStates[6] = !buttonStates[6]; // Toggle button state
                });
              },
              buttonWidth: buttonWidth,
            ),
            FilterButton(
              text: "Adventure",
              isButtonClicked: buttonStates[7],
              onPressed: () {
                setState(() {
                  buttonStates[7] = !buttonStates[7]; // Toggle button state
                });
              },
              buttonWidth: buttonWidth,
            ),
          ],
        ),
      ],
    );
  }
}
