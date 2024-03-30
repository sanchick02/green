import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:green/presets/colors.dart';
import 'package:green/presets/fonts.dart';
import 'package:green/presets/shadow.dart';
import 'package:green/presets/styles.dart';
import 'package:green/widgets/divider_line.dart';

class ItineraryCard extends StatelessWidget {
  const ItineraryCard({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      constraints: const BoxConstraints(minHeight: 100),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColor.btnColorSecondary,
        borderRadius: AppStyles.borderRadiusAll,
        boxShadow: [
          AppShadow.innerShadow3,
        ],
      ),
      child: Column(
        children: [
          Text(
            "Immerse in Sabah's Culture",
            style: AppFonts.normalRegularTextHeight,
          ),
          const DividerLine(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Day 1",
                style: AppFonts.smallRegularText,
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Image.asset(
                    "lib/assets/images/seascuba.jpg",
                    width: 50,
                    height: 50,
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Sabah State Museum",
                    style: AppFonts.smallRegularText,
                  ),
                  const Spacer(),
                  Text(
                    "9:00AM - 12:00PM",
                    style: AppFonts.extraSmallLightText,
                  )
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Image.asset(
                    "lib/assets/images/line.png",
                    height: 50,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Shared Shuttle",
                    style: AppFonts.extraSmallLightText,
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    "lib/assets/images/seascuba.jpg",
                    width: 50,
                    height: 50,
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Sabah State Museum",
                    style: AppFonts.smallRegularText,
                  ),
                  const Spacer(),
                  Text(
                    "9:00AM - 12:00PM",
                    style: AppFonts.extraSmallLightText,
                  )
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Image.asset(
                    "lib/assets/images/line.png",
                    height: 50,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Shared Shuttle",
                    style: AppFonts.extraSmallLightText,
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    "lib/assets/images/seascuba.jpg",
                    width: 50,
                    height: 50,
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Sabah State Museum",
                    style: AppFonts.smallRegularText,
                  ),
                  const Spacer(),
                  Text(
                    "9:00AM - 12:00PM",
                    style: AppFonts.extraSmallLightText,
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Day 1",
                style: AppFonts.smallRegularText,
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Image.asset(
                    "lib/assets/images/seascuba.jpg",
                    width: 50,
                    height: 50,
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Sabah State Museum",
                    style: AppFonts.smallRegularText,
                  ),
                  const Spacer(),
                  Text(
                    "9:00AM - 12:00PM",
                    style: AppFonts.extraSmallLightText,
                  )
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Image.asset(
                    "lib/assets/images/line.png",
                    height: 50,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Shared Shuttle",
                    style: AppFonts.extraSmallLightText,
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    "lib/assets/images/seascuba.jpg",
                    width: 50,
                    height: 50,
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Sabah State Museum",
                    style: AppFonts.smallRegularText,
                  ),
                  const Spacer(),
                  Text(
                    "9:00AM - 12:00PM",
                    style: AppFonts.extraSmallLightText,
                  )
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Image.asset(
                    "lib/assets/images/line.png",
                    height: 50,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Shared Shuttle",
                    style: AppFonts.extraSmallLightText,
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    "lib/assets/images/seascuba.jpg",
                    width: 50,
                    height: 50,
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Sabah State Museum",
                    style: AppFonts.smallRegularText,
                  ),
                  const Spacer(),
                  Text(
                    "9:00AM - 12:00PM",
                    style: AppFonts.extraSmallLightText,
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          )
        ],
      ),
    );
  }
}
