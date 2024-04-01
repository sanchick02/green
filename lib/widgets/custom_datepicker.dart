import 'package:flutter/material.dart';
import 'package:datepicker_dropdown/datepicker_dropdown.dart';
import 'package:datepicker_dropdown/order_format.dart';
import 'package:green/presets/fonts.dart';

class CustomDatePicker extends StatefulWidget {
  final ValueChanged<String?>? onChangedDay;
  final ValueChanged<String?>? onChangedMonth;
  final ValueChanged<String?>? onChangedYear;
  final int? selectedDay;
  final int? selectedMonth;
  final int? selectedYear;

  const CustomDatePicker({
    Key? key,
    this.onChangedDay,
    this.onChangedMonth,
    this.onChangedYear,
    this.selectedDay,
    this.selectedMonth,
    this.selectedYear,
  }) : super(key: key);

  @override
  _CustomDatePickerState createState() => _CustomDatePickerState();
}

class _CustomDatePickerState extends State<CustomDatePicker> {
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
          DropdownDatePicker(
            locale: "en",
            width: MediaQuery.of(context).size.width * 0.02,
            textStyle: AppFonts.extraSmallLightText,
            hintTextStyle: AppFonts.extraSmallLightText,
            dateformatorder: OrderFormat.DMY,
            isDropdownHideUnderline: false,
            isFormValidator: true,
            isExpanded: false,
            startYear: 2024,
            endYear: 2026,
            selectedDay: widget.selectedDay,
            selectedMonth: widget.selectedMonth,
            selectedYear: widget.selectedYear,
            monthFlex: 3,
            dayFlex: 2,
            yearFlex: 2,
            onChangedDay: widget.onChangedDay != null
                ? (value) => widget.onChangedDay!(value)
                : null,
            onChangedMonth: widget.onChangedMonth != null
                ? (value) => widget.onChangedMonth!(value)
                : null,
            onChangedYear: widget.onChangedYear != null
                ? (value) => widget.onChangedYear!(value)
                : null,
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            "To",
            style: AppFonts.extraSmallLightText,
          ),
          DropdownDatePicker(
            locale: "en",
            width: MediaQuery.of(context).size.width * 0.02,
            textStyle: AppFonts.extraSmallLightText,
            hintTextStyle: AppFonts.extraSmallLightText,
            dateformatorder: OrderFormat.DMY,
            isDropdownHideUnderline: false,
            isFormValidator: true,
            isExpanded: true,
            startYear: 2024,
            endYear: 2026,
            selectedDay: widget.selectedDay,
            selectedMonth: widget.selectedMonth,
            selectedYear: widget.selectedYear,
            monthFlex: 3,
            dayFlex: 2,
            yearFlex: 2,
            onChangedDay: widget.onChangedDay != null
                ? (value) => widget.onChangedDay!(value)
                : null,
            onChangedMonth: widget.onChangedMonth != null
                ? (value) => widget.onChangedMonth!(value)
                : null,
            onChangedYear: widget.onChangedYear != null
                ? (value) => widget.onChangedYear!(value)
                : null,
          ),
        ],
      ),
    );
  }
}
