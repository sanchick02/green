import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:green/presets/colors.dart';
import 'package:green/presets/fonts.dart';
import 'package:green/screens/explore/explore_detail_screen.dart';
import 'package:green/widgets/explore_widgets/info_button.dart';

class ExploreDestinationsScreen extends StatelessWidget {

  final List<String> imageList = ['lib/assets/images/langkawi.png', 'lib/assets/images/penang.png', 'lib/assets/images/genting.png', 'lib/assets/images/batu_caves.png'];
  final List<String> destinationList = ['Langkawi', 'Penang', 'Genting Highland', 'Batu Caves'];
  final List<String> categoryList = ['Beach', 'Food', 'High-Altitude', 'Nature'];
  final List<String> shortDescriptionList = ['Where relaxation meets adventure, offering island hopping, jungle treks, and water sports amidst stunning scenery.', 
  'A vibrant island destination celebrated for its rich cultural heritage, delicious street food, and colonial architecture.', 
  'Malaysia\'s high-altitude getaway, boasting luxury resorts, shopping malls, and adrenaline-pumping adventures.',
  ' Iconic limestone caves in Selangor, Malaysia, renowned for their Hindu temples and vibrant religious festivals.'];
  
  ExploreDestinationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                      'lib/assets/images/topbar_logo.png',
                      width: 100,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'Explore by Destinations',
                        style: AppFonts.largeMediumText,
                      ),
                    ),
                    SizedBox(height: 50,), // Search Bar
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
                  itemCount: destinationList.length,
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      destinationList[index],
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
                                        categoryList[index],
                                        style: AppFonts.extraSmallLightText,
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      child: Text(
                                        shortDescriptionList[index],
                                        style: AppFonts.extraSmallLightText,
                                      ),
                                    ),
                                    Spacer(),
                                    InfoButton(onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => 
                                          ExploreDetailScreen(destinationName: destinationList[index],
                                          locationTag: categoryList[index],),
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