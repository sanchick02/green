import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:green/model/destination_model.dart';
import 'package:green/presets/colors.dart';
import 'package:green/presets/fonts.dart';
import 'package:green/presets/shadow.dart';
import 'package:green/presets/styles.dart';

class DestinationCard extends StatelessWidget {
  const DestinationCard({
    Key? key,
    required this.destination,
    required this.margin,
  }) : super(key: key);

  final Destination destination;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    // Get the screen width
    final screenWidth = MediaQuery.of(context).size.width;
    // Calculate the card width based on screen width
    final cardWidth = (screenWidth - 50) / 2;

    return GestureDetector(
      onTap: () {
        // Handle onTap event
      },
      child: Container(
        margin: margin,
        width: cardWidth,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 220,
              decoration: BoxDecoration(
                borderRadius: AppStyles.borderRadiusAll,
                boxShadow: [
                  AppShadow.innerShadow3,
                  AppShadow.innerShadow4,
                ],
              ),
              child: ClipRRect(
                borderRadius: AppStyles.borderRadiusAll,
                child: Image.asset(
                  destination.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ClipRRect(
              borderRadius: AppStyles.borderRadiusBottom,
              child: Container(
                width: cardWidth,
                height: 220 * 0.5,
                decoration: BoxDecoration(
                  boxShadow: [
                    AppShadow.innerShadow3,
                    AppShadow.innerShadow4,
                  ],
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.white.withOpacity(1.0),
                      Colors.white.withOpacity(0.7),
                      Colors.white.withOpacity(0.1),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 100,
              left: 10,
              right: 15,
              child: Container(
                child: Column(
                  children: [
                    SizedBox(
                      width: cardWidth, // Adjust width for text container
                      height: 110,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            destination.destinationName,
                            style: AppFonts.normalRegularText,
                          ),
                          Text(
                            destination.state,
                            style: AppFonts.smallLightText,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
