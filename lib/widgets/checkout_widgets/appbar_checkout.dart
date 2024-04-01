import 'package:flutter/material.dart';
import 'package:green/presets/fonts.dart';
import 'package:green/widgets/back_button_top.dart';

class AppBarCheckout extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Function()? onBackButtonPressed;

  AppBarCheckout({
    required this.title,
    this.onBackButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text(
        title,
        style: AppFonts.largeMediumText
        ),
      leading: BackButtonTop(
        onBackButtonPressed: () {
          Navigator.pop(context);
        }
      )
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
