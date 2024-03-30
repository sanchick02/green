import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:green/presets/colors.dart';
import 'package:green/presets/fonts.dart';
import 'package:green/widgets/button.dart';

class LandingScreen1 extends StatefulWidget {
  LandingScreen1({super.key});

  @override
  State<LandingScreen1> createState() => _LandingScreen1State();
}

class _LandingScreen1State extends State<LandingScreen1> {
  int carouselCurrentIndex = 0;

  List<String> carouselImageUrls = [
    "lib/assets/images/landing1.png",
    "lib/assets/images/landing2.png",
    "lib/assets/images/landing3.png",
    "lib/assets/images/landing4.png",
    "lib/assets/images/landing5.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Your background image
          Image.asset(
            "lib/assets/images/grad.png",
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          // Carousel Slider
          Container(
            width: double.infinity,
            child: CarouselSlider(
              items: carouselImageUrls.map((imageUrl) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Image.asset(
                    imageUrl,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                );
              }).toList(),
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height * 0.8,
                autoPlay: false,
                viewportFraction: 1.0,
                aspectRatio: 2.0,
                enableInfiniteScroll: false,
                onPageChanged: (index, reason) {
                  setState(
                    () {
                      carouselCurrentIndex = index;
                    },
                  );
                },
              ),
            ),
          ),
          // Button and Text
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.8,
                ),
                DefaultButton(
                  backgroundColor: carouselCurrentIndex ==
                          carouselImageUrls.length - 1
                      ? AppColor
                          .btnColorPrimary // Change color when last image is reached
                      : AppColor.btnColorSecondary,
                  text: carouselCurrentIndex == carouselImageUrls.length - 1
                      ? "Click to Explore 6reen"
                      : "Swipe Left To Next Step",
                  press: carouselCurrentIndex == carouselImageUrls.length - 1
                      ? () {
                          // Navigate to SignUp
                        }
                      : () {},
                  height: 60,
                  fontStyle:
                      carouselCurrentIndex == carouselImageUrls.length - 1
                          ? AppFonts.normalRegularTextWhite
                          : AppFonts.normalRegularText,
                  width: 250,
                  padding: EdgeInsets.zero,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
