import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:green/presets/colors.dart';
import 'package:green/presets/fonts.dart';
import 'package:green/presets/shadow.dart';
import 'package:green/presets/styles.dart';
import 'package:green/widgets/button.dart';
import 'package:green/widgets/divider_line.dart';
import 'package:green/widgets/radial_gauge.dart';
import 'package:green/widgets/toggle_switch.dart';
import 'package:green/widgets/topbar_logo_notif.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  // void _signOut() async {
  //   await FirebaseAuth.instance.signOut().then((value) => Navigator.push(
  //         context,
  //         MaterialPageRoute(builder: (context) => const AuthWidgetTree()),
  //       ));
  // }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // var provider = Provider.of<UserProvider>(context, listen: true);

    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: Container(
        color: AppColor.backgroundColor,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              color: AppColor.backgroundColor,
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 180,
                        decoration: BoxDecoration(
                          color: AppColor.fontColorSecondary,
                          boxShadow: [
                            AppShadow.innerShadow3,
                            AppShadow.innerShadow4
                          ],
                        ),
                      ),
                      const TopBarLogoNotif(),
                      Container(
                        padding: const EdgeInsets.only(left: 15, top: 50),
                        height: 180,
                        child: Text(
                          "Profile",
                          style: AppFonts.largeMediumText,
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 250,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                ClipOval(
                                    child: Image.asset(
                                  "lib/assets/images/profilesam.jpg",
                                  width: 150,
                                  height: 150,
                                  fit: BoxFit.cover,
                                )),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 15),
                    child: Column(
                      children: [
                        Text(
                          "Sam",
                          style: AppFonts.largeMediumText,
                        ),
                        Text(
                          "Age: 24",
                          style: AppFonts.smallLightText,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "Adventurer",
                          style: AppFonts.extraSmallLightText,
                        ),
                        const SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            DefaultButton(
                              text: "Edit Profile",
                              press: () {},
                              backgroundColor: AppColor.btnColorPrimary,
                              height: 30,
                              fontStyle: AppFonts.smallLightTextWhite,
                              width: 120,
                              padding: EdgeInsets.zero,
                            ),
                            const SizedBox(width: 10),
                            DefaultButton(
                              text: "Sign Out", // CHANGED THIS
                              press: () {},
                              backgroundColor: AppColor.btnColorPrimary,
                              height: 30,
                              fontStyle: AppFonts.smallLightTextWhite,
                              width: 120,
                              padding: EdgeInsets.zero,
                            )
                          ],
                        ),
                        const SizedBox(height: 20),
                        Container(
                          padding: const EdgeInsets.all(15),
                          width: double.infinity,
                          constraints: const BoxConstraints(minHeight: 50),
                          decoration: BoxDecoration(
                            color: AppColor.fontColorSecondary,
                            borderRadius: AppStyles.borderRadiusAll,
                            boxShadow: [
                              AppShadow.innerShadow3,
                              AppShadow.innerShadow4
                            ],
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    "lib/assets/images/topbar_logo.png",
                                    width: 60,
                                  ),
                                  const Spacer(),
                                  DefaultButton(
                                    text: "Redeem",
                                    press: () {},
                                    backgroundColor: AppColor.btnColorPrimary,
                                    height: 30,
                                    fontStyle: AppFonts.smallLightTextWhite,
                                    width: 70,
                                    padding: EdgeInsets.zero,
                                  ),
                                ],
                              ),
                              Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  SizedBox(
                                    width: double.infinity,
                                    height: 250,
                                    child: RadialGaugeWidget(),
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "SILVER",
                                        style: AppFonts.normalRegularText,
                                      ),
                                      Text(
                                        "320 points left to GOLD",
                                        style: AppFonts.smallLightText,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Column(
                                children: [
                                  Image.asset(
                                    "lib/assets/images/barcode.png",
                                    width: 230,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          width: double.infinity,
                          constraints: const BoxConstraints(minHeight: 100),
                          decoration: BoxDecoration(
                            color: AppColor.fontColorSecondary,
                            borderRadius: AppStyles.borderRadiusAll,
                            boxShadow: [
                              AppShadow.innerShadow3,
                              AppShadow.innerShadow4
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, right: 15, top: 15),
                                child: Text(
                                  "Profile Settings",
                                  style: AppFonts.normalRegularText,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                child: DividerLine(),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text(
                                      "Push notifications",
                                      style: AppFonts.smallLightText,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 5),
                                    child: ToggleSwitch(
                                      onToggle: (bool) {},
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text(
                                      "Location Services",
                                      style: AppFonts.smallLightText,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 5),
                                    child: ToggleSwitch(
                                      onToggle: (bool) {},
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text(
                                      "Camera Access",
                                      style: AppFonts.smallLightText,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 5),
                                    child: ToggleSwitch(
                                      onToggle: (bool) {},
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text(
                                      "Change Password",
                                      style: AppFonts.smallLightText,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Image.asset(
                                        "lib/assets/icons/arrow_next_gray_small.png",
                                        width: 30,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 15,
                                      ),
                                      child: Text(
                                        "Privacy Policy",
                                        style: AppFonts.smallLightText,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: Image.asset(
                                          "lib/assets/icons/arrow_next_gray_small.png",
                                          width: 30,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
