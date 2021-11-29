// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:strong_jhon_ui/constants/colors.dart';
// import 'package:strong_jhon_ui/constants/styles.dart';

// class CustomTable extends StatefulWidget {
//   const CustomTable({Key? key}) : super(key: key);

//   @override
//   State<CustomTable> createState() => _CustomTableState();
// }

// class _CustomTableState extends State<CustomTable> {
//   int _value = 1;
//   @override
//   Widget build(BuildContext context) {
//     return Table(
//       border:
//           TableBorder.all(width: 2, color: Color(0xff707070).withOpacity(0.2)),
//       children: [
//         TableRow(children: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TableCell(
//                 child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   "Current Period",
//                   style: boldgrey20fontsize,
//                 ),
//                 Container(
//                   height: 29.h,
//                   width: 175.w,
//                   decoration: BoxDecoration(border: Border.all()),
//                   child: DropdownButton(
//                       iconEnabledColor: blackcolor,
//                       isExpanded: true,
//                       underline: Container(),
//                       value: _value,
//                       items: [
//                         DropdownMenuItem(
//                           child: Text(
//                             " 9/5/2020  10/6/2020",
//                             style: black15fontsize,
//                           ),
//                           value: 1,
//                         ),
//                         DropdownMenuItem(
//                           child: Text(
//                             " 2/5/2020  12/6/2020",
//                             style: black15fontsize,
//                           ),
//                           value: 2,
//                         )
//                       ],
//                       onChanged: (value) {
//                         setState(() {
//                           _value = value.hashCode;
//                         });
//                       },
//                       hint: Text("Select item")),
//                 ),
//               ],
//             )),
//           ),
//         ]),
//         TableRow(children: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TableCell(
//                 child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   "Total Customers",
//                   style: boldgrey20fontsize,
//                 ),
//                 Text(
//                   "60",
//                   style: boldblack20fontsize,
//                 ),
//               ],
//             )),
//           ),
//         ]),
//         TableRow(children: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TableCell(
//                 child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   "Invoices Generated",
//                   style: boldgrey20fontsize,
//                 ),
//                 Text(
//                   "48",
//                   style: boldblack20fontsize,
//                 ),
//               ],
//             )),
//           ),
//         ])
//       ],
//     );
//   }
// }
