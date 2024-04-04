import 'package:flutter/material.dart';
import 'package:green/data/destinations.dart';
import 'package:green/model/destination_model.dart';
import 'package:green/presets/colors.dart';
import 'package:green/presets/fonts.dart';
import 'package:green/presets/styles.dart';
import 'package:green/widgets/button.dart';
import 'package:green/widgets/popup_comparison.dart';

class ExploreDetailScreen extends StatelessWidget {
  final String destinationName;
  final String locationTag;

  const ExploreDetailScreen({
    required this.destinationName,
    required this.locationTag,
  });

  List<Destination> get destinationInfo {
    return destinationList
        .where((destination) => destination.destinationName == destinationName)
        .toList();
  }

  List<Destination> get eastMalaysiaDestinations {
    return destinationList
        .where((destination) =>
            destination.locationTag == locationTag &&
            destination.region == "East")
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: ExploreAppBar(title: 'Explore By Destinations'),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  destinationInfo[0].backgroundImage,
                  height: 300,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Container(
                  width: double.infinity,
                  height: 300,
                  decoration: BoxDecoration(
                    gradient: AppColor.whiteGradient3(),
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
                        destinationInfo[0].destinationName,
                        style: AppFonts.heading3Height,
                      ),
                      Text(
                        ('${destinationInfo[0].location}, ${destinationInfo[0].region!} Malaysia'),
                        style: AppFonts.smallLightText,
                      ),
                      const SizedBox(height: 15),
                    ],
                  ),
                ),
                AppBar(
                  backgroundColor: Colors.transparent,
                  title: Text(
                    "Explore Destination Details",
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
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                destinationInfo[0].longDescription ?? 'No description',
                style: AppFonts.extraSmallLightText,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15),
              child: Text(
                'Similar Destinations in East Malaysia',
                style: AppFonts.normalRegularText,
              ),
            ),
            DestinationsList(
                eastMalaysiaDestinations: eastMalaysiaDestinations),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}

class DestinationsList extends StatelessWidget {
  const DestinationsList({
    Key? key,
    required this.eastMalaysiaDestinations,
  }) : super(key: key);

  final List<Destination> eastMalaysiaDestinations;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: eastMalaysiaDestinations.map((destination) {
        return Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            color: const Color(0xff252525).withOpacity(0.05),
            height: 220,
            width: double.infinity,
            child: Row(
              children: [
                SizedBox(
                  height: double.infinity,
                  width: 150,
                  child: Image.asset(
                    destination.backgroundImage,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          destination.destinationName,
                          style: AppFonts.normalRegularText,
                        ),
                        const Spacer(),
                        Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: AppStyles.borderRadiusAll,
                            color: AppColor.lightGrey,
                          ),
                          width: MediaQuery.of(context).size.width * 0.5,
                          //height: 20,
                          child: Text(
                            destination.locationTag ?? 'Unknown',
                            style: AppFonts.extraSmallLightText,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          destination.longDescription ?? 'No description',
                          style: AppFonts.extraSmallLightText,
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            DefaultButton(
                              text: "More Info",
                              press: () {},
                              backgroundColor: AppColor.btnColorPrimary,
                              height: 35,
                              fontStyle: AppFonts.extraSmallLightTextWhite,
                              width:
                                  ((MediaQuery.of(context).size.width * 0.5) -
                                          30) /
                                      2,
                              padding: EdgeInsets.zero,
                            ),
                            const Spacer(),
                            DefaultButton(
                              text: "Compare",
                              backgroundColor: AppColor.btnColorPrimary,
                              height: 35,
                              fontStyle: AppFonts.extraSmallLightTextWhite,
                              width:
                                  ((MediaQuery.of(context).size.width * 0.5) -
                                          30) /
                                      2,
                              padding: EdgeInsets.zero,
                              press: () {
                                // Show the dialog
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return const PopUpComparison();
                                  },
                                );
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
