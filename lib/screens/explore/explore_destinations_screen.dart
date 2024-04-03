import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:green/data/destinations.dart';
import 'package:green/model/destination_model.dart';
import 'package:green/presets/colors.dart';
import 'package:green/presets/fonts.dart';
import 'package:green/providers/destination_provider.dart';
import 'package:green/screens/explore/explore_detail_screen.dart';
import 'package:green/widgets/explore_widgets/info_button.dart';
import 'package:provider/provider.dart';

class ExploreDestinationsScreen extends StatefulWidget {
  ExploreDestinationsScreen({super.key});

  @override
  State<ExploreDestinationsScreen> createState() =>
      _ExploreDestinationsScreenState();
}

class _ExploreDestinationsScreenState extends State<ExploreDestinationsScreen> {
  final List<String> imageList = [
    'lib/assets/images/langkawi.png',
    'lib/assets/images/penang.png',
    'lib/assets/images/genting.png',
    'lib/assets/images/batu_caves.png'
  ];

  @override
  Widget build(BuildContext context) {
    DestinationProvider destinationProvider =
        Provider.of<DestinationProvider>(context);

    //Access the destinationList from the DestinationProvider
    List<Destination> destinationList = destinationProvider.destinationList
        .where((destination) => destination.region == "West")
        .toList();

    List<String> destinationNames = [];

    for (Destination destination in destinationList) {
      destinationNames.add(destination.destinationName);
    }

    String dropdownValue = destinationNames.first;

    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Image.asset(
                      'lib/assets/images/logo_auth.png',
                      width: 100,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'Explore by Destinations',
                        style: AppFonts.largeMediumText,
                      ),
                    ),
                    DropdownMenu<String>(
                      //menuHeight: 20,
                      initialSelection: destinationNames.first,
                      onSelected: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          dropdownValue = value!;
                        });
                      },
                      dropdownMenuEntries: destinationNames
                          .map<DropdownMenuEntry<String>>((String value) {
                        return DropdownMenuEntry<String>(
                            value: value, label: value);
                      }).toList(),
                    ), // Search Bar
                    Text(
                      'Popular Destinations in West Malaysia',
                      style: AppFonts.normalRegularText,
                    )
                  ],
                ),
              ),

              // List view for destinations
              Expanded(
                child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Color(0xff252525).withOpacity(0.05),
                          height: 210,
                          width: double.infinity,
                          child: Row(
                            children: [
                              Image.asset(
                                imageList[index],
                                width: 175,
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        destinationList[index].destinationName,
                                        style: AppFonts.normalRegularText,
                                      ),
                                      Spacer(),
                                      Container(
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Color(0xffFFEEC4),
                                        ),
                                        width: 100,
                                        //height: 20,
                                        child: Text(
                                          destinationList[index].locationTag ??
                                              "No tag available",
                                          style: AppFonts.extraSmallLightText,
                                        ),
                                      ),
                                      Spacer(),
                                      Container(
                                        child: Text(
                                          destinationList[index]
                                                  .destinationDescription ??
                                              "Not available",
                                          style: AppFonts.extraSmallLightText,
                                        ),
                                      ),
                                      Spacer(),
                                      InfoButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    ExploreDetailScreen(
                                                  destinationName:
                                                      destinationList[index]
                                                          .destinationName,
                                                  locationTag:
                                                      destinationList[index]
                                                              .locationTag ??
                                                          "Unknown",
                                                ),
                                              ),
                                            );
                                          },
                                          text: 'More Info')
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    })),
              )
            ],
          ),
        ),
      ),
    );
  }
}
