import 'package:flutter/material.dart';
import 'package:green/model/bereal_model.dart';
import 'package:green/presets/colors.dart';
import 'package:green/presets/fonts.dart';
import 'package:green/presets/styles.dart';
import 'package:green/provider/begreen_post_provider.dart';
import 'package:green/provider/user_provider.dart';
import 'package:green/screens/begreen.dart';
import 'package:green/screens/begreen_community_list.dart';
import 'package:green/widgets/topbar_logo_notif.dart';
import 'package:provider/provider.dart';

class BeGreenScreen extends StatefulWidget {
  const BeGreenScreen({Key? key}) : super(key: key);

  @override
  State<BeGreenScreen> createState() => _BeGreenScreenState();
}

class _BeGreenScreenState extends State<BeGreenScreen> {
  final List<BeReal> _registeredExpenses = [
    BeReal(
        uid: '',
        pid: '',
        userImage: '',
        userName: '',
        time: '',
        greenRewards: '',
        postImage: '',
        likes: 0),
  ];

  @override
  Widget build(BuildContext context) {
    var _provider = Provider.of<UserProvider>(context);

    Widget mainContent = const Center(
      child: Text('No expense found, Start adding some!'),
    );

    if (_registeredExpenses.isNotEmpty) {
      mainContent = const BeGreenList(); // Implement BeGreenList widget
    }

    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const TopBarLogoNotif(),
              Container(
                margin: EdgeInsets.only(top: 15, bottom: 30),
                width: double.infinity,
                constraints: BoxConstraints(minHeight: 100),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: AppStyles.edgeInsetsLR,
                      child: Text(
                        "BeGreen Community",
                        style: AppFonts.normalRegularText,
                      ),
                    ),
                    mainContent,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
