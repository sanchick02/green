import 'dart:io';

import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:green/presets/colors.dart';
import 'package:green/presets/shadow.dart';
import 'package:green/presets/styles.dart';
import 'package:green/provider/user_provider.dart';
import 'package:green/screens/home_screen.dart';
// import 'package:green/providers/user_provider.dart';
import 'package:provider/provider.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  BottomNavigationBar get navigationBar {
    return _NavigationState.navigatorKey.currentWidget as BottomNavigationBar;
  }

  int currentIndex = 0;
  bool _isLoading = true;

  File? _selectedImage;

  List<Widget> pages = [];

  @override
  void initState() {
    Provider.of<UserProvider>(context, listen: false).fetchUserData().then((_) {
      setState(() {
        _isLoading = false;

        pages = [
          const HomeScreen(),
          // const ChatScreen1(),
          // const Bazoot_Screen(),
          // const CommunityScreen(),
          // const ProfileScreen(),
        ];
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColor.backgroundColor,
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : pages[currentIndex],
      bottomNavigationBar: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 70,
            decoration: BoxDecoration(
                color: AppColor.btnColorSecondary,
                borderRadius: AppStyles.borderRadiusTop,
                boxShadow: [AppShadow.innerShadow1]),
          ),
          NavigationBarTheme(
            data: NavigationBarThemeData(
              indicatorColor: AppColor.fontColorPrimary.withOpacity(0.1),
            ),
            child: NavigationBar(
              elevation: 0,
              selectedIndex: currentIndex,
              onDestinationSelected: (int newIndex) {
                setState(() {
                  currentIndex = newIndex;
                });
              },
              height: 70,
              backgroundColor: Colors.transparent,
              destinations: [
                NavigationDestination(
                  icon: Image.asset(
                    "lib/assets/icons/home.png",
                    width: 40,
                  ),
                  label: 'Home',
                ),
                NavigationDestination(
                  icon: Image.asset(
                    "lib/assets/icons/itinerary.png",
                    width: 40,
                  ),
                  label: 'Itinerary',
                ),
                NavigationDestination(
                  icon: Image.asset(
                    "lib/assets/icons/chatbot.png",
                    width: 40,
                  ),
                  label: 'Chatbot',
                ),
                NavigationDestination(
                  icon: Image.asset(
                    "lib/assets/icons/nowaste.png",
                    width: 40,
                  ),
                  label: 'NoWaste',
                ),
                NavigationDestination(
                  icon: Image.asset(
                    "lib/assets/icons/profile.png",
                    width: 40,
                  ),
                  label: 'Profile',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
