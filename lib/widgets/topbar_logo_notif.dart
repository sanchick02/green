import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:green/auth_widget_tree.dart';
import 'package:green/page_navigator.dart';
import 'package:green/presets/colors.dart';
import 'package:green/screens/begreen.dart';
import 'package:green/screens/begreen_item.dart';

class TopBarLogoNotif extends StatelessWidget {
  const TopBarLogoNotif({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Row(
        children: [
          Image.asset(
            "lib/assets/images/topbar_logo.png",
            width: 80,
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {
              navigateNextPage(context, BeGreen());
            },
            style: ButtonStyle(
              padding: const MaterialStatePropertyAll(EdgeInsets.zero),
              backgroundColor:
                  MaterialStatePropertyAll(AppColor.btnColorSecondary),
              shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(999.0),
                ),
              ),
              minimumSize: MaterialStateProperty.all(
                  const Size(50, 50)), // Set minimum size
            ),
            child: Image.asset(
              "lib/assets/icons/nowaste.png",
              width: 30,
              height: 30,
            ),
          )
        ],
      ),
    );
  }
}
