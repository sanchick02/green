import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:green/presets/fonts.dart';
import 'package:green/widgets/divider_line.dart';

class NumberOfPaxDropdown extends StatelessWidget {
  final List<int> items;
  final int? selectedValue;
  final ValueChanged<int?> onChanged;

  const NumberOfPaxDropdown({
    Key? key,
    required this.items,
    required this.selectedValue,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        DropdownButton2<int>(
          underline: const DividerLine(),
          iconStyleData: IconStyleData(
              icon: Image.asset(
            "lib/assets/icons/arrowdown.png",
            width: 13,
          )),
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
          value: selectedValue,
          onChanged: onChanged,
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
          underline: const DividerLine(),
          iconStyleData: IconStyleData(
              icon: Image.asset(
            "lib/assets/icons/arrowdown.png",
            width: 13,
          )),
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
          value: selectedValue,
          onChanged: onChanged,
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
          underline: const DividerLine(),
          iconStyleData: IconStyleData(
              icon: Image.asset(
            "lib/assets/icons/arrowdown.png",
            width: 13,
          )),
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
          value: selectedValue,
          onChanged: onChanged,
          buttonStyleData: ButtonStyleData(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            height: 75,
            width: (MediaQuery.of(context).size.width - 80) / 3,
          ),
          menuItemStyleData: const MenuItemStyleData(height: 40),
        ),
      ],
    );
  }
}
