import 'package:flutter/material.dart';
import 'package:green/data/destinations.dart';
import 'package:green/model/destination_model.dart';
import 'package:green/presets/fonts.dart';
import 'package:green/widgets/explore_widgets/explore_app_bar.dart';
import 'package:green/widgets/explore_widgets/info_button.dart';

class ExploreDetailScreen extends StatelessWidget {

  final String destinationName;
  final String locationTag;

  ExploreDetailScreen({
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
        .where((destination) => destination.locationTag == locationTag 
          && destination.region == "East")
        .toList();
  }

  //final String image = 'lib/assets/images/langkawi2.png';
  //final destination = 'Langkawi';
  //final String location = 'Kedah, West Malaysia';
  //final String description = 'Nestled in the tranquil embrace of the Andaman Sea, Langkawi beckons travelers with its captivating blend of natural wonders and cultural treasures. From the architectural marvels of the Langkawi Sky Bridge to the biodiverse wonders of Kilim Karst Geoforest Park, each attraction promises unforgettable moments of discovery and delight. Whether exploring pristine beaches or delving into centuries-old heritage sites, Langkawi offers a tapestry of experiences that leave a lasting impression on all who visit.';
  //const ExploreDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ExploreAppBar(title: 'Explore By Destinations'),
      extendBodyBehindAppBar: true,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Image.asset(
                    destinationInfo[0].backgroundImage,
                    ),
                  Image.asset('lib/assets/images/gradient.png'),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          destinationInfo[0].destinationName,
                          style: AppFonts.heading3,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Image.asset('lib/assets/icons/location_icon.png',
                              width: 11,),
                            ),
                            Text(
                              (destinationInfo[0].location + ', ' + destinationInfo[0].region! + ' Malaysia'),
                              style: AppFonts.extraSmallLightText,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  destinationInfo[0].longDescription!,
                  style: AppFonts.smallLightText,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15),
                child: Text(
                  'Similar Destinations in East Malaysia',
                  style: AppFonts.normalRegularText,
                ),
              ),
              DestinationsList(eastMalaysiaDestinations: eastMalaysiaDestinations),
            ],
          ),
        ),
        );
  }
}

class DestinationsList extends StatelessWidget {
  const DestinationsList({
    super.key,
    required this.eastMalaysiaDestinations,
  });

  final List<Destination> eastMalaysiaDestinations;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: eastMalaysiaDestinations.length,
          itemBuilder: ((context, index) {
            return Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                color: Color(0xff252525).withOpacity(0.05),
                height: 220,
                width: double.infinity,
                child: Row(
                  children: [
                    Container(
                      height: double.infinity,
                      width: 150,
                      child: Image.asset(
                        eastMalaysiaDestinations[index].backgroundImage,
                        //width: 150,
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
                              eastMalaysiaDestinations[index].destinationName,
                              style: AppFonts.normalRegularText,
                            ),
                            Spacer(),
                            Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xffFFEEC4),
                              ),
                              width: 100,
                              //height: 20,
                              child: Text(
                                eastMalaysiaDestinations[index].locationTag ?? 'Unknown',
                                style: AppFonts.extraSmallLightText,
                              ),
                            ),
                            Spacer(),
                            Container(
                              child: Text(
                                eastMalaysiaDestinations[index].longDescription!,
                                style: AppFonts.extraSmallLightText,
                              ),
                            ),
                            Spacer(),
                            Row(
                              children: [
                                InfoButton(onPressed: () {
                                  
                                }, 
                                text: 'More Info'),
                                SizedBox(width: 7,),
                                InfoButton(onPressed: () {

                                }, 
                                text: 'Compare'),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }));
  }
}