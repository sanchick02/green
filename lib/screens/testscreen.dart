// import 'package:flutter/material.dart';
// import 'package:green/widgets/custom_datepicker.dart';
// import 'package:flutter/material.dart';
// import 'package:datepicker_dropdown/datepicker_dropdown.dart';
// import 'package:datepicker_dropdown/order_format.dart';
// import 'package:green/presets/fonts.dart';
// import 'package:green/widgets/numberofpax_dropdown.dart';

// class TestSCreen extends StatefulWidget {
//   TestSCreen(
//       {super.key,
//       this.onChangedDay,
//       this.onChangedMonth,
//       this.onChangedYear,
//       this.selectedDay,
//       this.selectedMonth,
//       this.selectedYear});

//   final ValueChanged<String?>? onChangedDay;
//   final ValueChanged<String?>? onChangedMonth;
//   final ValueChanged<String?>? onChangedYear;
//   final int? selectedDay;
//   final int? selectedMonth;
//   final int? selectedYear;

//   @override
//   State<TestSCreen> createState() => _TestSCreenState();
// }

// class _TestSCreenState extends State<TestSCreen> {
//   final List<int> items = [
//     0,
//     1,
//     2,
//     3,
//     4,
//     5,
//   ];

//   int? selectedKidValue;
//   int? selectedAdultValue;
//   int? selectedSeniorValue;

//   int? selectedDayValue;
//   String? selectedMonthValue;
//   int? selectedYearValue;

//   final List<int> date = [
//     0,
//     1,
//     2,
//     3,
//     4,
//     5,
//   ];

//   final List<String> month = [
//     "January",
//     "Februrary",
//     "March",
//     "April",
//     "May",
//     "June",
//     "July",
//     "August",
//     "September",
//     "October",
//     "November",
//     "December",
//   ];

//   final List<int> year = [
//     2024,
//     2025,
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               CustomDatePicker(
//                 date: date,
//                 month: month,
//                 year: year,
//                 selectedDateValue: selectedDayValue,
//                 selectedMonthValue: selectedMonthValue,
//                 selectedYearValue: selectedYearValue,
//                 onDayChanged: (int? value) {
//                   setState(() {
//                     selectedDayValue = value;
//                   });
//                 },
//                 onMonthChanged: (String? value) {
//                   setState(() {
//                     selectedMonthValue = value;
//                   });
//                 },
//                 onYearChanged: (int? value) {
//                   setState(() {
//                     selectedYearValue = value;
//                   });
//                 },
//               ),
//               NumberOfPaxDropdown(
//                 items: items,
//                 selectedKidValue: selectedKidValue,
//                 selectedAdultValue: selectedAdultValue,
//                 selectedSeniorValue: selectedSeniorValue,
//                 onKidChanged: (int? value) {
//                   setState(() {
//                     selectedKidValue = value;
//                   });
//                 },
//                 onAdultChanged: (int? value) {
//                   setState(() {
//                     selectedAdultValue = value;
//                   });
//                 },
//                 onSeniorChanged: (int? value) {
//                   setState(() {
//                     selectedSeniorValue = value;
//                   });
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
