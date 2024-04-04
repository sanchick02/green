import 'package:flutter/material.dart';
import 'package:green/auth_widget_tree.dart';
import 'package:green/data/destinations.dart';
import 'package:green/data/upcoming_trips.dart';
import 'package:green/model/destination_model.dart';
import 'package:green/presets/colors.dart';
import 'package:green/provider/begreen_post_provider.dart';
import 'package:green/provider/user_provider.dart';
import 'package:green/screens/chatbot_screen.dart';
import 'package:green/screens/destination/destination_details_screen.dart';
import 'package:green/screens/eastwest_stats_screen.dart';
import 'package:green/screens/home_screen.dart';
import 'package:green/screens/itinerary/saved_itinerary_screen.dart';
import 'package:green/screens/itinerary/swipe_itinerary_screen.dart';
import 'package:green/screens/landing/landing_screen.dart';
import 'package:green/screens/landing/landing_screen1.dart';
import 'package:green/screens/itinerary/my_itinerary_screen.dart';
import 'package:green/screens/begreen_item.dart';
import 'package:green/screens/profile_screen.dart';
import 'package:camera/camera.dart';
import 'package:green/screens/landing/question_screen.dart';
import 'package:green/data/questions.dart';
import 'package:green/screens/upcomingtrip_details_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

List<CameraDescription>? cameras = [];

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: UserProvider(),
        ),
        ChangeNotifierProvider.value(
          value: BeGreenProvider(),
        ),
      ],
      child: MaterialApp(
        home: const AuthWidgetTree(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: AppColor
              .btnColorPrimary, // Change this to your desired primary color
          fontFamily:
              'LeagueSpartan', // Change this to your desired font family
        ),
      ),
    );
  }
}
