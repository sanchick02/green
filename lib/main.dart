import 'package:flutter/material.dart';
import 'package:green/data/destinations.dart';
import 'package:green/data/upcoming_trips.dart';
import 'package:green/model/destination_model.dart';
import 'package:green/screens/chatbot_screen.dart';
import 'package:green/screens/destination/destination_details_screen.dart';
import 'package:green/screens/eastwest_stats_screen.dart';
import 'package:green/screens/home_screen.dart';
import 'package:green/screens/itinerary/saved_itinerary_screen.dart';
import 'package:green/screens/itinerary/swipe_itinerary_screen.dart';
import 'package:green/screens/landing/landing_screen.dart';
import 'package:green/screens/landing/landing_screen1.dart';
import 'package:green/screens/itinerary/my_itinerary_screen.dart';
import 'package:green/screens/begreen_community_screen.dart';
import 'package:green/screens/profile_screen.dart';
import 'package:green/screens/landing/question_screen.dart';
import 'package:green/data/questions.dart';
import 'package:green/screens/upcomingtrip_details_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: DestinationDetailsScreen(
      //   detail: flightDetailList[0],
      // ),
      // home: UpcomingTripDetailsScreen(
      //   upcomingTrip: upcomingTripList[0],
      // ),
      // home: SwipeItineraryScreen(),
      // home: SavedItineraryScreen(),
      // home: MyItineraryScreen(),
      // home: ProfileScreen(),
      // home: ChatbotScreen(),
      // home: HomeScreen(),
      // home: QuestionsScreen(
      //   questions: questionsList,
      // ),
      // home: BeGreenCommunityScreen(),
      // home: LandingScreen1(),
      home: EastWestStatsScreen(),
    );
  }
}
