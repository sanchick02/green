import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:green/auth_widget_tree.dart';
import 'package:green/screens/begreen.dart';
import 'package:green/screens/begreen_community_screen.dart';

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
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BeGreen(),
                ),
              );
            },
            icon: Image.asset(
              "lib/assets/icons/bell.png",
              width: 30,
            ),
          ),
        ],
      ),
    );
  }
}
