import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:green/presets/colors.dart';
import 'package:green/presets/shadow.dart';
import 'package:green/presets/styles.dart';

class CustomNavigationBar extends StatefulWidget {
  final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;

  CustomNavigationBar({
    Key? key,
    required this.selectedIndex,
    required this.onDestinationSelected,
  }) : super(key: key);

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
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
              selectedIndex: widget.selectedIndex,
              onDestinationSelected: widget.onDestinationSelected,
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
