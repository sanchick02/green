import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:datepicker_dropdown/datepicker_dropdown.dart';
import 'package:datepicker_dropdown/order_format.dart';
import 'package:green/presets/fonts.dart';
import 'package:green/widgets/divider_line.dart';

class CustomDatePicker extends StatefulWidget {
  final int? selectedStartDateValue;
  final String? selectedStartMonthValue;
  final int? selectedStartYearValue;
  final int? selectedEndDateValue;
  final String? selectedEndMonthValue;
  final int? selectedEndYearValue;
  final ValueChanged<int?> onStartDateChanged;
  final ValueChanged<String?> onStartMonthChanged;
  final ValueChanged<int?> onStartYearChanged;
  final ValueChanged<int?> onEndDateChanged;
  final ValueChanged<String?> onEndMonthChanged;
  final ValueChanged<int?> onEndYearChanged;

  const CustomDatePicker({
    Key? key,
    this.selectedStartDateValue,
    this.selectedStartMonthValue,
    this.selectedStartYearValue,
    this.selectedEndDateValue,
    this.selectedEndMonthValue,
    this.selectedEndYearValue,
    required this.onStartDateChanged,
    required this.onStartMonthChanged,
    required this.onStartYearChanged,
    required this.onEndDateChanged,
    required this.onEndMonthChanged,
    required this.onEndYearChanged,
  }) : super(key: key);

  @override
  _CustomDatePickerState createState() => _CustomDatePickerState();
}

class _CustomDatePickerState extends State<CustomDatePicker> {
  final List<int> date = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20,
    21,
    22,
    23,
    24,
    25,
    26,
    27,
    28,
    29,
    30,
    31
  ];

  final List<String> month = [
    "January",
    "Februrary",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December",
  ];

  final List<int> year = [
    2024,
    2025,
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15, right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "From",
            style: AppFonts.extraSmallLightText,
          ),
          Row(
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
                  'Date',
                  style: AppFonts.extraSmallLightText,
                ),
                items: date
                    .map((int item) => DropdownMenuItem<int>(
                          value: item,
                          child: Text(
                            item.toString(),
                            style: AppFonts.extraSmallLightText,
                          ),
                        ))
                    .toList(),
                value: widget.selectedStartDateValue,
                onChanged: widget.onStartDateChanged,
                buttonStyleData: ButtonStyleData(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  height: 75,
                  width: (MediaQuery.of(context).size.width - 30) / 3,
                ),
                menuItemStyleData: const MenuItemStyleData(height: 40),
              ),
              DropdownButton2<String>(
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
                  'Month',
                  style: AppFonts.extraSmallLightText,
                ),
                items: month
                    .map((String item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item.toString(),
                            style: AppFonts.extraSmallLightText,
                          ),
                        ))
                    .toList(),
                value: widget.selectedStartMonthValue,
                onChanged: widget.onStartMonthChanged,
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
                  'Year',
                  style: AppFonts.extraSmallLightText,
                ),
                items: year
                    .map((int item) => DropdownMenuItem<int>(
                          value: item,
                          child: Text(
                            item.toString(),
                            style: AppFonts.extraSmallLightText,
                          ),
                        ))
                    .toList(),
                value: widget.selectedStartYearValue,
                onChanged: widget.onStartYearChanged,
                buttonStyleData: ButtonStyleData(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  height: 75,
                  width: (MediaQuery.of(context).size.width - 30) / 3,
                ),
                menuItemStyleData: const MenuItemStyleData(height: 40),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "To",
            style: AppFonts.extraSmallLightText,
          ),
          Row(
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
                  'Date',
                  style: AppFonts.extraSmallLightText,
                ),
                items: date
                    .map((int item) => DropdownMenuItem<int>(
                          value: item,
                          child: Text(
                            item.toString(),
                            style: AppFonts.extraSmallLightText,
                          ),
                        ))
                    .toList(),
                value: widget.selectedEndDateValue,
                onChanged: widget.onEndDateChanged,
                buttonStyleData: ButtonStyleData(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  height: 75,
                  width: (MediaQuery.of(context).size.width - 30) / 3,
                ),
                menuItemStyleData: const MenuItemStyleData(height: 40),
              ),
              DropdownButton2<String>(
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
                  'Month',
                  style: AppFonts.extraSmallLightText,
                ),
                items: month
                    .map((String item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item.toString(),
                            style: AppFonts.extraSmallLightText,
                          ),
                        ))
                    .toList(),
                value: widget.selectedEndMonthValue,
                onChanged: widget.onEndMonthChanged,
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
                  'Year',
                  style: AppFonts.extraSmallLightText,
                ),
                items: year
                    .map((int item) => DropdownMenuItem<int>(
                          value: item,
                          child: Text(
                            item.toString(),
                            style: AppFonts.extraSmallLightText,
                          ),
                        ))
                    .toList(),
                value: widget.selectedEndYearValue,
                onChanged: widget.onEndYearChanged,
                buttonStyleData: ButtonStyleData(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  height: 75,
                  width: (MediaQuery.of(context).size.width - 30) / 3,
                ),
                menuItemStyleData: const MenuItemStyleData(height: 40),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
