import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:green/presets/fonts.dart';
import 'package:green/widgets/divider_line.dart';

class NumberOfPaxDropdown extends StatelessWidget {
  final List<int> items;
  final int? selectedAdultValue;
  final int? selectedKidValue;
  final int? selectedSeniorValue;
  final ValueChanged<int?> onAdultChanged;
  final ValueChanged<int?> onKidChanged;
  final ValueChanged<int?> onSeniorChanged;

  const NumberOfPaxDropdown({
    Key? key,
    required this.items,
    required this.selectedAdultValue,
    required this.selectedKidValue,
    required this.selectedSeniorValue,
    required this.onAdultChanged,
    required this.onKidChanged,
    required this.onSeniorChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        DropdownButton2<int>(
          // Adult dropdown
          underline: const DividerLine(),
          iconStyleData: IconStyleData(
            icon: Image.asset(
              "lib/assets/icons/arrowdown.png",
              width: 13,
            ),
          ),
          isExpanded: true,
          hint: Text(
            'Adult',
            style: AppFonts.extraSmallLightText,
          ),
          items: items
              .map((int item) => DropdownMenuItem<int>(
                    value: item,
                    child: Text(
                      item.toString(),
                      style: AppFonts.extraSmallLightText,
                    ),
                  ))
              .toList(),
          value: selectedAdultValue,
          onChanged: onAdultChanged,
          buttonStyleData: ButtonStyleData(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            height: 75,
            width: (MediaQuery.of(context).size.width - 30) / 3,
          ),
          menuItemStyleData: const MenuItemStyleData(height: 40),
        ),
        DropdownButton2<int>(
          // Kid dropdown
          underline: const DividerLine(),
          iconStyleData: IconStyleData(
            icon: Image.asset(
              "lib/assets/icons/arrowdown.png",
              width: 13,
            ),
          ),
          isExpanded: true,
          hint: Text(
            'Kid',
            style: AppFonts.extraSmallLightText,
          ),
          items: items
              .map((int item) => DropdownMenuItem<int>(
                    value: item,
                    child: Text(
                      item.toString(),
                      style: AppFonts.extraSmallLightText,
                    ),
                  ))
              .toList(),
          value: selectedKidValue,
          onChanged: onKidChanged,
          buttonStyleData: ButtonStyleData(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            height: 75,
            width: (MediaQuery.of(context).size.width - 20) / 3,
          ),
          menuItemStyleData: const MenuItemStyleData(height: 40),
        ),
        DropdownButton2<int>(
          // Senior dropdown
          underline: const DividerLine(),
          iconStyleData: IconStyleData(
            icon: Image.asset(
              "lib/assets/icons/arrowdown.png",
              width: 13,
            ),
          ),
          isExpanded: true,
          hint: Text(
            'Senior',
            style: AppFonts.extraSmallLightText,
          ),
          items: items
              .map((int item) => DropdownMenuItem<int>(
                    value: item,
                    child: Text(
                      item.toString(),
                      style: AppFonts.extraSmallLightText,
                    ),
                  ))
              .toList(),
          value: selectedSeniorValue,
          onChanged: onSeniorChanged,
          buttonStyleData: ButtonStyleData(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            height: 75,
            width: (MediaQuery.of(context).size.width - 40) / 3,
          ),
          menuItemStyleData: const MenuItemStyleData(height: 40),
        ),
      ],
    );
  }
}
