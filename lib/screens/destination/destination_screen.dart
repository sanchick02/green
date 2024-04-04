import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:green/data/activities_data.dart';
import 'package:green/data/destinations.dart';
import 'package:green/model/acommodation_model.dart';
import 'package:green/model/destination_model.dart';
import 'package:green/model/flight_detail_model.dart';
import 'package:green/model/tour_detail_model.dart';
import 'package:green/presets/colors.dart';
import 'package:green/presets/fonts.dart';
import 'package:green/presets/styles.dart';
import 'package:green/providers/accommodation_provider.dart';
import 'package:green/providers/activity_provider.dart';
import 'package:green/providers/flight_detail_provider.dart';
import 'package:green/providers/tour_provider.dart';
import 'package:green/screens/destination/destination_details_screen.dart';
import 'package:green/widgets/accommodation_card.dart';
import 'package:green/widgets/button.dart';
import 'package:green/widgets/custom_datepicker.dart';
import 'package:green/widgets/flight_card.dart';
import 'package:green/widgets/numberofpax_dropdown.dart';
import 'package:green/widgets/package_card.dart';
import 'package:green/widgets/recommendation_card.dart';
import 'package:provider/provider.dart';

class DestinationScreen extends StatefulWidget {
  DestinationScreen({super.key, required this.destination});

  final Destination destination;

  @override
  State<DestinationScreen> createState() => _DestinationScreenState();
}

class _DestinationScreenState extends State<DestinationScreen> {
  final List<int> items = [
    0,
    1,
    2,
    3,
    4,
    5,
  ];

  int? selectedKidValue;
  int? selectedAdultValue;
  int? selectedSeniorValue;
  int? selectedStartDayValue;
  String? selectedStartMonthValue;
  int? selectedStartYearValue;
  int? selectedEndDayValue;
  String? selectedEndMonthValue;
  int? selectedEndYearValue;
  bool isButtonClicked = false;
  bool isActivityButtonClicked = true;
  bool isAccommodationButtonClicked = false;
  bool isToursButtonClicked = false;
  bool isFlightsButtonClicked = false;

  void _navigateToDestinationDetails(
      BuildContext context, DestinationDetailBase detail) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DestinationDetailsScreen(detail: detail),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<ActivityDetail> activityList = activityDetailList
        .where((activity) =>
            activity.destinationName == widget.destination.destinationName)
        .toList();

    List<AccommodationDetail> accommodationList = accommodationDetailList
        .where((accommodotion) =>
            accommodotion.destinationName == widget.destination.destinationName)
        .toList();

    List<TourDetail> tourList = tourDetailList
        .where((tour) =>
            tour.destinationName == widget.destination.destinationName)
        .toList();

    List<FlightDetail> flightList = flightDetailList
        .where((flight) =>
            flight.destinationName == widget.destination.destinationName)
        .toList();

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  widget.destination.backgroundImage,
                  height: 300,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Container(
                  width: double.infinity,
                  height: 300,
                  decoration: BoxDecoration(
                    gradient: AppColor.whiteGradient(),
                  ),
                ),
                Container(
                  height: 300,
                  padding: AppStyles.edgeInsetsLR,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Spacer(),
                      Text(
                        widget.destination.destinationName,
                        style: AppFonts.heading3Height,
                      ),
                      Text(
                        widget.destination.destinationDescription!,
                        style: AppFonts.smallLightText,
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Image.asset(
                            "lib/assets/icons/location.png",
                            width: 15,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            widget.destination.location,
                            style: AppFonts.extraSmallLightText,
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
                AppBar(
                  backgroundColor: Colors.transparent,
                  title: Text(
                    "Destination Details",
                    style: AppFonts.normalRegularText,
                  ),
                  leading: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Image.asset(
                      "lib/assets/icons/arrow_back_gray_small.png",
                      width: 30,
                    ),
                  ),
                ),
              ],
            ),
            isButtonClicked
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: AppStyles.edgeInsetsLR,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(999),
                                    color: isActivityButtonClicked
                                        ? AppColor.btnColorPrimary
                                        : const Color(0xff252525)
                                            .withOpacity(0.10),
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        isActivityButtonClicked = true;
                                        isAccommodationButtonClicked = false;
                                        isToursButtonClicked = false;
                                        isFlightsButtonClicked = false;
                                      });
                                    },
                                    icon: Image.asset(
                                      "lib/assets/icons/activities.jpg",
                                      width: 60,
                                      height: 60,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Activities",
                                  style: AppFonts.extraSmallLightText,
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(999),
                                    color: isAccommodationButtonClicked
                                        ? AppColor.btnColorPrimary
                                        : const Color(0xff252525)
                                            .withOpacity(0.10),
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        isAccommodationButtonClicked = true;
                                        isActivityButtonClicked = false;
                                        isToursButtonClicked = false;
                                        isFlightsButtonClicked = false;
                                      });
                                    },
                                    icon: Image.asset(
                                      "lib/assets/icons/accommodation.png",
                                      width: 60,
                                      height: 60,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Accommodation",
                                  style: AppFonts.extraSmallLightText,
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(999),
                                    color: isToursButtonClicked
                                        ? AppColor.btnColorPrimary
                                        : const Color(0xff252525)
                                            .withOpacity(0.10),
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        isToursButtonClicked = true;
                                        isActivityButtonClicked = false;
                                        isAccommodationButtonClicked = false;
                                        isFlightsButtonClicked = false;
                                      });
                                    },
                                    icon: Image.asset(
                                      "lib/assets/icons/tour.png",
                                      width: 60,
                                      height: 60,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Tours",
                                  style: AppFonts.extraSmallLightText,
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(999),
                                    color: isFlightsButtonClicked
                                        ? AppColor.btnColorPrimary
                                        : const Color(0xff252525)
                                            .withOpacity(0.10),
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        isFlightsButtonClicked = true;
                                        isActivityButtonClicked = false;
                                        isAccommodationButtonClicked = false;
                                        isToursButtonClicked = false;
                                      });
                                    },
                                    icon: Image.asset(
                                      "lib/assets/icons/flight.png",
                                      width: 60,
                                      height: 60,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Flights",
                                  style: AppFonts.extraSmallLightText,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      isActivityButtonClicked
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
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
                                        activityList.length,
                                        (index) => GestureDetector(
                                          onTap: () {
                                            _navigateToDestinationDetails(
                                                context,
                                                activityDetailList[index]);
                                          },
                                          child: RecommendationCard(
                                            title: activityList[index].title,
                                            price: activityList[index]
                                                .price
                                                .toString(),
                                            image: activityList[index]
                                                .backgroundImage,
                                            margin: EdgeInsets.only(
                                                left: 15,
                                                right: index ==
                                                        activityDetailList
                                                                .length -
                                                            1
                                                    ? 15
                                                    : 0),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: AppStyles.edgeInsetsLR,
                                  child: Text(
                                    "Adventure",
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
                                        activityList.length,
                                        (index) => GestureDetector(
                                          onTap: () {
                                            _navigateToDestinationDetails(
                                                context,
                                                activityDetailList[index]);
                                          },
                                          child: RecommendationCard(
                                            title: activityList[index].title,
                                            price: activityList[index]
                                                .price
                                                .toString(),
                                            image: activityList[index]
                                                .backgroundImage,
                                            margin: EdgeInsets.only(
                                                left: 15,
                                                right: index ==
                                                        activityDetailList
                                                                .length -
                                                            1
                                                    ? 15
                                                    : 0),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: AppStyles.edgeInsetsLR,
                                  child: Text(
                                    "Chill",
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
                                        activityList.length,
                                        (index) => GestureDetector(
                                          onTap: () {
                                            _navigateToDestinationDetails(
                                                context,
                                                activityDetailList[index]);
                                          },
                                          child: RecommendationCard(
                                            title: activityList[index].title,
                                            price: activityList[index]
                                                .price
                                                .toString(),
                                            image: activityList[index]
                                                .backgroundImage,
                                            margin: EdgeInsets.only(
                                                left: 15,
                                                right: index ==
                                                        activityDetailList
                                                                .length -
                                                            1
                                                    ? 15
                                                    : 0),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: AppStyles.edgeInsetsLR,
                                  child: Text(
                                    "Islands",
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
                                        activityList.length,
                                        (index) => GestureDetector(
                                          onTap: () {
                                            _navigateToDestinationDetails(
                                                context,
                                                activityDetailList[index]);
                                          },
                                          child: RecommendationCard(
                                            title: activityList[index].title,
                                            price: activityList[index]
                                                .price
                                                .toString(),
                                            image: activityList[index]
                                                .backgroundImage,
                                            margin: EdgeInsets.only(
                                                left: 15,
                                                right: index ==
                                                        activityDetailList
                                                                .length -
                                                            1
                                                    ? 15
                                                    : 0),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                              ],
                            )
                          : isAccommodationButtonClicked
                              ? Column(
                                  children: List.generate(
                                    accommodationList.length,
                                    (index) => Column(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            _navigateToDestinationDetails(
                                              context,
                                              accommodationList[index],
                                            );
                                          },
                                          child: AccommodationCard(
                                            title:
                                                accommodationList[index].title,
                                            destinationName:
                                                accommodationList[index]
                                                    .destinationName,
                                            price:
                                                accommodationList[index].price,
                                            image: accommodationList[index]
                                                .backgroundImage,
                                          ),
                                        ),
                                        SizedBox(height: 15),
                                      ],
                                    ),
                                  ),
                                )
                              : isToursButtonClicked
                                  ? Padding(
                                      padding: AppStyles.edgeInsetsLR,
                                      child: Column(
                                        children: List.generate(
                                          tourList.length,
                                          (index) => Column(
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  _navigateToDestinationDetails(
                                                    context,
                                                    tourDetailList[index],
                                                  );
                                                },
                                                child: PackageCard(
                                                  image: tourList[index]
                                                      .backgroundImage,
                                                  description: tourList[index]
                                                      .description,
                                                  price: tourList[index].price,
                                                  title: tourList[index].title,
                                                ),
                                              ),
                                              SizedBox(height: 15),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  : isFlightsButtonClicked
                                      // ? Padding(
                                      //     padding: AppStyles.edgeInsetsLR,
                                      //     child: const Column(
                                      //       children: [
                                      //         FlightCard(),
                                      //         SizedBox(
                                      //           height: 15,
                                      //         ),
                                      //         FlightCard(),
                                      //         SizedBox(
                                      //           height: 15,
                                      //         ),
                                      //         FlightCard(),
                                      //         SizedBox(
                                      //           height: 30,
                                      //         ),
                                      //       ],
                                      //     ),
                                      //   )
                                      ? Padding(
                                          padding: AppStyles.edgeInsetsLR,
                                          child: Column(
                                            children: List.generate(
                                              flightList.length,
                                              (index) => Column(
                                                children: [
                                                  GestureDetector(
                                                    onTap: () {
                                                      _navigateToDestinationDetails(
                                                        context,
                                                        flightDetailList[index],
                                                      );
                                                    },
                                                    child: FlightCard(
                                                      flightDetail:
                                                          flightList[index],
                                                    ),
                                                  ),
                                                  SizedBox(height: 15),
                                                ],
                                              ),
                                            ),
                                          ),
                                        )
                                      : Container(),
                    ],
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: AppStyles.edgeInsetsLR,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "When are You Traveling?",
                              style: AppFonts.normalRegularText,
                            ),
                            const SizedBox(
                              height: 10,
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Number of Pax",
                              style: AppFonts.smallRegularText,
                            ),
                            NumberOfPaxDropdown(
                              items: items,
                              selectedKidValue: selectedKidValue,
                              selectedAdultValue: selectedAdultValue,
                              selectedSeniorValue: selectedSeniorValue,
                              onKidChanged: (int? value) {
                                setState(() {
                                  selectedKidValue = value;
                                });
                              },
                              onAdultChanged: (int? value) {
                                setState(() {
                                  selectedAdultValue = value;
                                });
                              },
                              onSeniorChanged: (int? value) {
                                setState(() {
                                  selectedSeniorValue = value;
                                });
                              },
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            DefaultButton(
                              text: "Confirm to View Options",
                              press: () {
                                setState(() {
                                  isButtonClicked = true;
                                });
                              },
                              backgroundColor: AppColor.btnColorPrimary,
                              height: 50,
                              fontStyle: AppFonts.smallLightTextWhite,
                              width: double.infinity,
                              padding: EdgeInsets.zero,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
