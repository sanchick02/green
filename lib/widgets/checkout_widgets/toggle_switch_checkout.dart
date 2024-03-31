import 'package:flutter/material.dart';
import 'package:green/presets/colors.dart';

class ToggleSwitchCheckout extends StatefulWidget {
  final bool greenPointsOn;
  final Function(bool) onToggle;

  const ToggleSwitchCheckout({
    Key? key,
    required this.greenPointsOn,
    required this.onToggle,
  }) : super(key: key);

  @override
  ToggleSwitchCheckoutState createState() => ToggleSwitchCheckoutState();
}

class ToggleSwitchCheckoutState extends State<ToggleSwitchCheckout> {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: widget.greenPointsOn,
      onChanged: widget.onToggle,
      thumbColor: MaterialStateProperty.all(Colors.white),
      activeTrackColor: AppColor.switchColor,
      inactiveTrackColor: AppColor.switchOffColor,
      trackOutlineColor: MaterialStateProperty.all(
        Colors.black.withOpacity(0),
      ),
    );
  }
}