import 'package:flutter/material.dart';
import 'package:green/data/activities_data.dart';
import 'package:green/data/destinations.dart';
import 'package:green/model/acommodation_model.dart';
import 'package:green/model/destination_model.dart';
import 'package:green/model/flight_detail_model.dart';
import 'package:green/model/tour_detail_model.dart';
import 'package:green/presets/colors.dart';
import 'package:green/presets/fonts.dart';
import 'package:green/presets/styles.dart';
import 'package:green/widgets/button.dart';
import 'package:green/widgets/flight_card.dart';
import 'package:green/widgets/price_row.dart';

class DestinationDetailsScreen extends StatelessWidget {
  const DestinationDetailsScreen({Key? key, required this.detail})
      : super(key: key);

  final dynamic
      detail; // This can be ActivityDetail, AccommodationDetail, TourDetail, or FlightDetail

  @override
  Widget build(BuildContext context) {

    final price = detail.price;
    
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  detail.backgroundImage,
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
                        detail.title,
                        style: AppFonts.heading3Height,
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
                            detail.location,
                            style: AppFonts.extraSmallLightText,
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      PriceRow(
                        price: price,
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
                AppBar(
                  backgroundColor: Colors.transparent,
                  title: Text(
                    "More Details",
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
            detail is ActivityDetail
                ? Column(
                    children: [
                      Padding(
                        padding: AppStyles.edgeInsetsLR,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "What You Should Know",
                              style: AppFonts.smallRegularText,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: double.infinity,
                              constraints: const BoxConstraints(minHeight: 50),
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: AppColor.lightGrey,
                                borderRadius: AppStyles.borderRadiusAll,
                              ),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width - 60,
                                child: Text(
                                  detail.description,
                                  style: AppFonts.extraSmallLightText,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Images",
                              style: AppFonts.smallRegularText,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: List.generate(
                            activityDetailList.length,
                            (index) => Row(
                              children: List.generate(
                                activityDetailList[index].photos.length,
                                (photoIndex) => Padding(
                                  padding: EdgeInsets.only(
                                    left: photoIndex == 0 ? 15 : 15,
                                    right: photoIndex ==
                                            activityDetailList[index]
                                                    .photos
                                                    .length -
                                                1
                                        ? 15
                                        : 0,
                                  ),
                                  child: Container(
                                    width: (MediaQuery.of(context).size.width -
                                            50) /
                                        2,
                                    height:
                                        MediaQuery.of(context).size.width * 0.6,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.circular(10), //
                                      child: Image.asset(
                                        detail.photos[photoIndex],
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: AppStyles.edgeInsetsLR,
                        child: DefaultButton(
                          text: "Confirm to View Options",
                          press: () {},
                          backgroundColor: AppColor.btnColorPrimary,
                          height: 50,
                          fontStyle: AppFonts.smallLightTextWhite,
                          width: double.infinity,
                          padding: EdgeInsets.zero,
                        ),
                      )
                    ],
                  )
                : detail is AccommodationDetail
                    ? Column(
                        children: [
                          Padding(
                            padding: AppStyles.edgeInsetsLR,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "What You Should Know",
                                  style: AppFonts.smallRegularText,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  width: double.infinity,
                                  constraints:
                                      const BoxConstraints(minHeight: 50),
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: AppColor.lightGrey,
                                    borderRadius: AppStyles.borderRadiusAll,
                                  ),
                                  child: SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width - 60,
                                    child: Text(
                                      detail.description,
                                      style: AppFonts.extraSmallLightText,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Images",
                                  style: AppFonts.smallRegularText,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                              ],
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: List.generate(
                                accommodationDetailList.length,
                                (index) => Row(
                                  children: List.generate(
                                    accommodationDetailList[index]
                                        .photos
                                        .length,
                                    (photoIndex) => Padding(
                                      padding: EdgeInsets.only(
                                        left: photoIndex == 0 ? 15 : 15,
                                        right: photoIndex ==
                                                accommodationDetailList[index]
                                                        .photos
                                                        .length -
                                                    1
                                            ? 15
                                            : 0,
                                      ),
                                      child: Container(
                                        width:
                                            (MediaQuery.of(context).size.width -
                                                    50) /
                                                2,
                                        height:
                                            MediaQuery.of(context).size.width *
                                                0.6,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10), //
                                          child: Image.asset(
                                            detail.photos[photoIndex],
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: AppStyles.edgeInsetsLR,
                            child: DefaultButton(
                              text: "Confirm to View Options",
                              press: () {},
                              backgroundColor: AppColor.btnColorPrimary,
                              height: 50,
                              fontStyle: AppFonts.smallLightTextWhite,
                              width: double.infinity,
                              padding: EdgeInsets.zero,
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                        ],
                      )
                    : detail is TourDetail
                        ? Column(
                            children: [
                              Padding(
                                padding: AppStyles.edgeInsetsLR,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "What's Included",
                                      style: AppFonts.smallRegularText,
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      width: double.infinity,
                                      constraints:
                                          const BoxConstraints(minHeight: 50),
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        color: AppColor.lightGrey,
                                        borderRadius: AppStyles.borderRadiusAll,
                                      ),
                                      child: SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width -
                                                60,
                                        child: Text(
                                          detail.description2,
                                          style: AppFonts.extraSmallLightText,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "What You Should Know",
                                      style: AppFonts.smallRegularText,
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      width: double.infinity,
                                      constraints:
                                          const BoxConstraints(minHeight: 50),
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        color: AppColor.lightGrey,
                                        borderRadius: AppStyles.borderRadiusAll,
                                      ),
                                      child: SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width -
                                                60,
                                        child: Text(
                                          detail.description,
                                          style: AppFonts.extraSmallLightText,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "Images",
                                      style: AppFonts.smallRegularText,
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                  ],
                                ),
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: List.generate(
                                    tourDetailList.length,
                                    (index) => Row(
                                      children: List.generate(
                                        tourDetailList[index].photos.length,
                                        (photoIndex) => Padding(
                                          padding: EdgeInsets.only(
                                            left: photoIndex == 0 ? 15 : 15,
                                            right: photoIndex ==
                                                    activityDetailList[index]
                                                            .photos
                                                            .length -
                                                        1
                                                ? 15
                                                : 0,
                                          ),
                                          child: Container(
                                            width: (MediaQuery.of(context)
                                                        .size
                                                        .width -
                                                    50) /
                                                2,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.6,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10), //
                                              child: Image.asset(
                                                detail.photos[photoIndex],
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: AppStyles.edgeInsetsLR,
                                child: DefaultButton(
                                  text: "Confirm to View Options",
                                  press: () {},
                                  backgroundColor: AppColor.btnColorPrimary,
                                  height: 50,
                                  fontStyle: AppFonts.smallLightTextWhite,
                                  width: double.infinity,
                                  padding: EdgeInsets.zero,
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                            ],
                          )
                        : detail is FlightDetail
                            ? Column(
                                children: [
                                  Padding(
                                    padding: AppStyles.edgeInsetsLR,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        //const FlightCard(),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          "Add-on",
                                          style: AppFonts.smallRegularText,
                                        ),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width -
                                              30,
                                          constraints: const BoxConstraints(
                                              minHeight: 50),
                                          padding: const EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            color: const Color(0xff252525)
                                                .withOpacity(0.05),
                                            borderRadius:
                                                AppStyles.borderRadiusAll,
                                          ),
                                          child: Row(
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    AppStyles.borderRadiusAll,
                                                child: Image.asset(
                                                  "lib/assets/icons/luggage.png",
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.1,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.1,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Additional Baggage",
                                                    style: AppFonts
                                                        .smallRegularText,
                                                  ),
                                                  const SizedBox(
                                                    height: 5,
                                                  ),
                                                  Text(
                                                    "Cabin-sized Baggage 1 x10kg",
                                                    style: AppFonts
                                                        .extraSmallLightText,
                                                  ),
                                                  const SizedBox(
                                                    height: 5,
                                                  ),
                                                  Text(
                                                    "Baggage 1 x20kg",
                                                    style: AppFonts
                                                        .extraSmallLightText,
                                                  ),
                                                  const SizedBox(
                                                    height: 5,
                                                  ),
                                                  Text(
                                                    "MYR 80.99",
                                                    style: AppFonts
                                                        .extraSmallLightText,
                                                  ),
                                                ],
                                              ),
                                              const Spacer(),
                                              ElevatedButton(
                                                onPressed: () {},
                                                style: ButtonStyle(
                                                  padding:
                                                      const MaterialStatePropertyAll(
                                                          EdgeInsets.zero),
                                                  backgroundColor:
                                                      MaterialStatePropertyAll(
                                                          AppColor
                                                              .btnColorPrimary),
                                                  shape: MaterialStatePropertyAll<
                                                      RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              999.0),
                                                    ),
                                                  ),
                                                  minimumSize:
                                                      MaterialStateProperty.all(
                                                          const Size(45,
                                                              45)), // Set minimum size
                                                ),
                                                child: Image.asset(
                                                  "lib/assets/icons/plus.png",
                                                  width: 15,
                                                  height: 15,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          "What You Should Know",
                                          style: AppFonts.smallRegularText,
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Container(
                                          width: double.infinity,
                                          constraints: const BoxConstraints(
                                              minHeight: 50),
                                          padding: const EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            color: AppColor.lightGrey,
                                            borderRadius:
                                                AppStyles.borderRadiusAll,
                                          ),
                                          child: SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width -
                                                60,
                                            child: Text(
                                              detail.description,
                                              style:
                                                  AppFonts.extraSmallLightText,
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
                                    child: DefaultButton(
                                      text: "Confirm to View Options",
                                      press: () {},
                                      backgroundColor: AppColor.btnColorPrimary,
                                      height: 50,
                                      fontStyle: AppFonts.smallLightTextWhite,
                                      width: double.infinity,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                ],
                              )
                            : Container(),
          ],
        ),
      ),
    );
  }
}
