import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:green/data/destinations.dart';
import 'package:green/data/upcoming_trips.dart';
import 'package:green/firebase_options.dart';
import 'package:green/model/destination_model.dart';
import 'package:green/navigation.dart';
import 'package:green/providers/destination_provider.dart';
import 'package:green/screens/chatbot_screen.dart';
import 'package:green/screens/checkout/checkout_screen.dart';
import 'package:green/screens/destination/destination_details_screen.dart';
import 'package:green/screens/eastwest_stats_screen.dart';
import 'package:green/screens/explore/explore_destinations_screen.dart';
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
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: DestinationProvider(),
        ),
      ],
      child: MaterialApp(
        // home: DestinationDetailsScreen(
        //   detail: flightDetailList[0],
        // ),
        // home: UpcomingTripDetailsScreen(
        //   upcomingTrip: upcomingTripList[0],
        // ),
        // home: QuestionsScreen(
        //   questions: questionsList,
        // ),
        // home: BeGreenCommunityScreen(),
        // home: LandingScreen1(),
        home: Navigation(),
      ),
    );
  }
}
