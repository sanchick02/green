import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:green/presets/colors.dart';
import 'package:green/presets/fonts.dart';
import 'package:green/presets/shadow.dart';
import 'package:green/presets/styles.dart';
import 'package:green/widgets/divider_line.dart';

class PopUpComparison extends StatefulWidget {
  const PopUpComparison({super.key});

  @override
  State<PopUpComparison> createState() => _PopUpComparisonState();
}

class _PopUpComparisonState extends State<PopUpComparison> {
  bool isCostButtonClicked = true;
  bool isCO2ButtonClicked = false;
  bool isCrowdButtonClicked = false;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: const RoundedRectangleBorder(
        borderRadius: AppStyles.borderRadiusAll,
      ),
      elevation: 0.0,
      // backgroundColor: Colors.black,
      child: contentBox(context),
    );
  }

  Widget contentBox(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.7,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.white,
          borderRadius: AppStyles.borderRadiusAll,
          boxShadow: [AppShadow.innerShadow1, AppShadow.innerShadow2],
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    padding: const EdgeInsets.only(top: 5),
                    constraints: const BoxConstraints(maxHeight: 35),
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Image.asset(
                          "lib/assets/icons/close.png",
                          width: 35,
                        ))),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Comparisons",
                  style: AppFonts.heading3,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Click on the buttons to see comparisons",
                  style: AppFonts.extraSmallLightText,
                )
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            Padding(
              padding: AppStyles.edgeInsetsLR,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isCostButtonClicked = true;
                            isCO2ButtonClicked = false;
                            isCrowdButtonClicked = false;
                          });
                        },
                        style: ButtonStyle(
                          backgroundColor: isCostButtonClicked
                              ? MaterialStatePropertyAll(
                                  AppColor.btnColorPrimary)
                              : MaterialStatePropertyAll(AppColor.lightGrey),
                          elevation: const MaterialStatePropertyAll(0),
                          padding: const MaterialStatePropertyAll(
                            EdgeInsets.zero,
                          ),
                          shape:
                              MaterialStatePropertyAll<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(999.0),
                            ),
                          ),
                          minimumSize:
                              MaterialStateProperty.all(const Size(65, 65)),
                        ),
                        child: Image.asset(
                          "lib/assets/icons/cost.png",
                          width: 30,
                          height: 30,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Cost",
                        style: AppFonts.extraSmallLightText,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isCostButtonClicked = false;
                            isCO2ButtonClicked = true;
                            isCrowdButtonClicked = false;
                          });
                        },
                        style: ButtonStyle(
                          backgroundColor: isCO2ButtonClicked
                              ? MaterialStatePropertyAll(
                                  AppColor.btnColorPrimary)
                              : MaterialStatePropertyAll(AppColor.lightGrey),
                          elevation: const MaterialStatePropertyAll(0),
                          padding: const MaterialStatePropertyAll(
                            EdgeInsets.zero,
                          ),
                          shape:
                              MaterialStatePropertyAll<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(999.0),
                            ),
                          ),
                          minimumSize:
                              MaterialStateProperty.all(const Size(65, 65)),
                        ),
                        child: Image.asset(
                          "lib/assets/icons/co2.png",
                          width: 30,
                          height: 30,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Carbon Emission",
                        style: AppFonts.extraSmallLightText,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isCostButtonClicked = false;
                            isCO2ButtonClicked = false;
                            isCrowdButtonClicked = true;
                          });
                        },
                        style: ButtonStyle(
                          backgroundColor: isCrowdButtonClicked
                              ? MaterialStatePropertyAll(
                                  AppColor.btnColorPrimary)
                              : MaterialStatePropertyAll(AppColor.lightGrey),
                          elevation: const MaterialStatePropertyAll(0),
                          padding: const MaterialStatePropertyAll(
                            EdgeInsets.zero,
                          ),
                          shape:
                              MaterialStatePropertyAll<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(999.0),
                            ),
                          ),
                          minimumSize:
                              MaterialStateProperty.all(const Size(65, 65)),
                        ),
                        child: Image.asset(
                          "lib/assets/icons/crowd.png",
                          width: 30,
                          height: 30,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Crowd",
                        style: AppFonts.extraSmallLightText,
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            isCostButtonClicked
                ? Column(
                    children: [
                      Text(
                        "What is the average cost for travel?",
                        style: AppFonts.smallLightText,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 25),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 15),
                        width: double.infinity,
                        constraints: const BoxConstraints(minHeight: 100),
                        decoration: BoxDecoration(
                          color: AppColor.extraLightGrey,
                          borderRadius: AppStyles.borderRadiusAll,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Langkawi",
                              style: AppFonts.smallLightText,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Text(
                                  "MYR 600",
                                  style: AppFonts.normalRegularText,
                                ),
                                const Spacer(),
                                Text(
                                  "/day on average",
                                  style: AppFonts.smallestLightText,
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const DividerLine(),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Semporna",
                              style: AppFonts.smallLightText,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                const Text(
                                  "MYR 400",
                                  style: TextStyle(
                                    fontFamily: "LeagueSpartan",
                                    fontSize: 20,
                                    fontWeight:
                                        FontWeight.w500, // normal regular
                                    color: Color(0xff4780D6),
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  "/day on average",
                                  style: AppFonts.smallestLightText,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            const TextSpan(
                              text: 'Less spending, ',
                              style: TextStyle(
                                fontFamily: "LeagueSpartan",
                                fontSize: 14,
                                fontWeight: FontWeight.w500, // normal regular
                                color: Color(0xff4780D6),
                              ),
                            ),
                            TextSpan(
                              text: 'greater beauty!',
                              style: TextStyle(
                                fontFamily: "LeagueSpartan",
                                fontSize: 14,
                                fontWeight: FontWeight.w300, // normal regular
                                color: AppColor.fontColorPrimary,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                : isCO2ButtonClicked
                    ? Column(
                        children: [
                          Text(
                            "How much carbon is emitted?",
                            style: AppFonts.smallLightText,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 25),
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 15),
                            width: double.infinity,
                            constraints: const BoxConstraints(minHeight: 100),
                            decoration: BoxDecoration(
                              color: AppColor.extraLightGrey,
                              borderRadius: AppStyles.borderRadiusAll,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Langkawi",
                                  style: AppFonts.smallLightText,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "0.02 tonnes",
                                      style: AppFonts.normalRegularText,
                                    ),
                                    const Spacer(),
                                    Text(
                                      "/trip on average",
                                      style: AppFonts.smallestLightText,
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const DividerLine(),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Semporna",
                                  style: AppFonts.smallLightText,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      "20-30% lower",
                                      style: TextStyle(
                                        fontFamily: "LeagueSpartan",
                                        fontSize: 20,
                                        fontWeight:
                                            FontWeight.w500, // normal regular
                                        color: Color(0xff4780D6),
                                      ),
                                    ),
                                    const Spacer(),
                                    Text(
                                      "/trip on average",
                                      style: AppFonts.smallestLightText,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Less carbon emission, more ',
                                  style: TextStyle(
                                    fontFamily: "LeagueSpartan",
                                    fontSize: 14,
                                    fontWeight:
                                        FontWeight.w300, // normal regular
                                    color: AppColor.fontColorPrimary,
                                  ),
                                ),
                                const TextSpan(
                                  text: 'eco-friendly!',
                                  style: TextStyle(
                                    fontFamily: "LeagueSpartan",
                                    fontSize: 14,
                                    fontWeight:
                                        FontWeight.w500, // normal regular
                                    color: Color(0xff40B594),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    : isCrowdButtonClicked
                        ? Column(
                            children: [
                              Text(
                                "How crowded are these destinations?",
                                style: AppFonts.smallLightText,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 25),
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 15),
                                width: double.infinity,
                                constraints:
                                    const BoxConstraints(minHeight: 100),
                                decoration: BoxDecoration(
                                  color: AppColor.extraLightGrey,
                                  borderRadius: AppStyles.borderRadiusAll,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Langkawi",
                                      style: AppFonts.smallLightText,
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Moderate - High",
                                      style: AppFonts.normalRegularText,
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const DividerLine(),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Semporna",
                                      style: AppFonts.smallLightText,
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text(
                                      "50-60% lower",
                                      style: TextStyle(
                                        fontFamily: "LeagueSpartan",
                                        fontSize: 20,
                                        fontWeight:
                                            FontWeight.w500, // normal regular
                                        color: Color(0xff4780D6),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Less crowd, ',
                                      style: TextStyle(
                                        fontFamily: "LeagueSpartan",
                                        fontSize: 14,
                                        fontWeight:
                                            FontWeight.w300, // normal regular
                                        color: AppColor.fontColorPrimary,
                                      ),
                                    ),
                                    const TextSpan(
                                      text: 'less waiting, ',
                                      style: TextStyle(
                                        fontFamily: "LeagueSpartan",
                                        fontSize: 14,
                                        fontWeight:
                                            FontWeight.w500, // normal regular
                                        color: Color(0xff4780D6),
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'more fun!',
                                      style: TextStyle(
                                        fontFamily: "LeagueSpartan",
                                        fontSize: 14,
                                        fontWeight:
                                            FontWeight.w300, // normal regular
                                        color: AppColor.fontColorPrimary,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )
                        : Container(),
          ],
        ));
  }
}
