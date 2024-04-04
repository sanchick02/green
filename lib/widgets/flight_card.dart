import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:green/model/flight_detail_model.dart';
import 'package:green/presets/colors.dart';
import 'package:green/presets/fonts.dart';
import 'package:green/presets/styles.dart';

class FlightCard extends StatelessWidget {
  const FlightCard({
    super.key,
    required this.flightDetail,
  });

  final FlightDetail flightDetail;


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
                  flightDetail.co2Description,
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
                          flightDetail.flightDepartureTime,
                          style: AppFonts.smallLightText,
                        ),
                        Text(
                          flightDetail.flightDestinationAirline,
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
                        flightDetail.flightType,
                        style: AppFonts.smallLightText,
                      ),
                      Text(
                        flightDetail.flightDuration,
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
                          flightDetail.flightReturnTime,
                          style: AppFonts.smallLightText,
                        ),
                        Text(
                          flightDetail.flightDestinationAirline,
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
                        flightDetail.flightType,
                        style: AppFonts.smallLightText,
                      ),
                      Text(
                        flightDetail.flightDuration,
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
                    "From MYR " + flightDetail.price.toString(),
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
