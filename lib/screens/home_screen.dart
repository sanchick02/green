import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:green/data/destinations.dart';
import 'package:green/page_navigator.dart';
import 'package:green/presets/colors.dart';
import 'package:green/presets/fonts.dart';
import 'package:green/presets/shadow.dart';
import 'package:green/presets/styles.dart';
import 'package:green/provider/user_provider.dart';
import 'package:green/screens/explore/explore_destinations_screen.dart';
import 'package:green/screens/statistics_screen.dart';
import 'package:green/widgets/button.dart';
import 'package:green/widgets/destination_card.dart';
import 'package:green/widgets/form_field.dart';
import 'package:green/widgets/home_screen_widgets/statistics_tracker.dart';
import 'package:green/widgets/package_carousel.dart';
import 'package:green/widgets/topbar_logo_notif.dart';
import 'package:green/widgets/upcomingtrips_carousel.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int carouselCurrentIndex = 0;
  final _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<UserProvider>(context, listen: false);
    if (provider.userProviderData == '') {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    String name = provider.userProviderData!.firstName.toString();

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TopBarLogoNotif(),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Welcome, $name!",
                          style: AppFonts.largeMediumText,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "You are better than 74% of the travelers.",
                          style: AppFonts.smallLightText,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => navigateNextPage(context, StatisticsScreen()),
                child: StatisticsTracker(points: points),
              ),
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
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.transparent,
                                  contentPadding: const EdgeInsets.symmetric(
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
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
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
              const SizedBox(height: 40),
              Padding(
                padding: AppStyles.edgeInsetsLR,
                child: Row(
                  children: [
                    Text(
                      "Explore by Destinations",
                      style: AppFonts.largeMediumText2,
                    ),
                    Spacer(),
                    DefaultButton(
                      text: "See More",
                      press: () {
                        navigateNextPage(context, ExploreDestinationsScreen());
                      },
                      backgroundColor: AppColor.btnColorPrimary,
                      height: 35,
                      fontStyle: AppFonts.extraSmallLightTextWhite,
                      width: MediaQuery.of(context).size.width * 0.25,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 8),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: AppStyles.edgeInsetsLR,
                child: Text(
                  "Sabah",
                  style: AppFonts.normalRegularText,
                ),
              ),
              const SizedBox(height: 10),
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
                child: Text(
                  "Sarawak",
                  style: AppFonts.normalRegularText,
                ),
              ),
              const SizedBox(height: 10),
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
