import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:green/presets/colors.dart';
import 'package:green/presets/fonts.dart';
import 'package:green/presets/styles.dart';

class FlightCard extends StatelessWidget {
  const FlightCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          constraints: BoxConstraints(
            minHeight: 55,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 10,
          ),
          // margin: AppStyles.edgeInsetsLR,
          decoration: BoxDecoration(
            color: AppColor.lightGrey,
            borderRadius: AppStyles.borderRadiusTop,
            border: Border(
              bottom: BorderSide(
                width: 0.5,
                color: AppColor.fontColorPrimary,
                style: BorderStyle.solid,
              ),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.75,
                child: Text(
                  "This flight emits 9% less CO2 than a typical flight on this route.",
                  style: AppFonts.extraSmallLightText,
                ),
              ),
              Image.asset(
                "lib/assets/images/greenpts.png",
                width: 20,
              ),
              Text(
                "+20",
                style: AppFonts.smallLightText,
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          constraints: BoxConstraints(
            minHeight: 55,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 10,
          ),
          // margin: AppStyles.edgeInsetsLR,
          decoration: BoxDecoration(
            color: AppColor.extraLightGrey,
            borderRadius: AppStyles.borderRadiusBottom,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    "lib/assets/images/grad.png",
                    width: 50,
                    height: 50,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "6:05AM - 8:45AM",
                          style: AppFonts.smallLightText,
                        ),
                        Text(
                          "KUL - BKI, AirAsia ",
                          style: AppFonts.extraSmallLightText,
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Direct",
                        style: AppFonts.smallLightText,
                      ),
                      Text(
                        "2h40m",
                        style: AppFonts.extraSmallLightText,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Image.asset(
                    "lib/assets/images/grad.png",
                    width: 50,
                    height: 50,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "6:05AM - 8:45AM",
                          style: AppFonts.smallLightText,
                        ),
                        Text(
                          "KUL - BKI, AirAsia ",
                          style: AppFonts.extraSmallLightText,
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Direct",
                        style: AppFonts.smallLightText,
                      ),
                      Text(
                        "2h40m",
                        style: AppFonts.extraSmallLightText,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "From MYR 213",
                    style: AppFonts.smallLightText,
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
