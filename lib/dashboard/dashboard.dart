import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:strong_jhon_ui/constants/colors.dart';
import 'package:strong_jhon_ui/constants/strings.dart';
import 'package:strong_jhon_ui/constants/styles.dart';
import 'package:intl/intl.dart';
import 'package:strong_jhon_ui/widgets/customtxtfield.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  int _value = 1;
  DateTimeRange? dateRange;

  String getFrom() {
    if (dateRange == null) {
      return '9/5/2020';
    } else {
      return DateFormat('MM/dd/yyyy').format(dateRange!.start);
    }
  }

  String getUntil() {
    if (dateRange == null) {
      return '10/6/2020';
    } else {
      return DateFormat('MM/dd/yyyy').format(dateRange!.end);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SvgPicture.asset(
            "images/menu.svg",
          ),
        ),
        backgroundColor: blackcolor,
        title: Text(
          'Dashboard',
          style: bold20yellowtxtstyle,
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(25),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: SvgPicture.asset(
              "images/account.svg",
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome James!",
                style: welcomejames,
              ),
              SizedBox(
                height: 20.h,
              ),
              Table(
                border: TableBorder.all(
                    width: 2, color: const Color(0xff707070).withOpacity(0.2)),
                children: [
                  TableRow(children: [
                    TableCell(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Current Period",
                            style: boldgrey20fontsize,
                          ),
                          Container(
                            height: 29.h,
                            width: 200.w,
                            decoration: BoxDecoration(border: Border.all()),

                            child: InkWell(
                              onTap: () => pickDateRange(context),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(width: 3.w),
                                      InkWell(
                                          onTap: () => pickDateRange(context),
                                          child: Text(
                                            getFrom(),
                                            style: black15fontsize,
                                          )),
                                      SizedBox(width: 10.w),
                                      InkWell(
                                          onTap: () => pickDateRange(context),
                                          child: Text(
                                            getUntil(),
                                            style: black15fontsize,
                                          )),
                                    ],
                                  ),
                                  Expanded(
                                      flex: 1,
                                      child: InkWell(
                                        onTap: () => pickDateRange(context),
                                        child: const Icon(
                                          Icons.arrow_drop_down,
                                          size: 30,
                                        ),
                                      )),
                                ],
                              ),
                            ),
                            // child: DropdownButton(
                            //     iconEnabledColor: blackcolor,
                            //     isExpanded: true,
                            //     underline: Container(),
                            //     value: _value,
                            //     items: [
                            //       DropdownMenuItem(
                            //         child: Text(
                            //           " 9/5/2020  10/6/2020",
                            //           style: black15fontsize,
                            //         ),
                            //         value: 1,
                            //       ),
                            //       DropdownMenuItem(
                            //         child: Text(
                            //           " 2/5/2020  12/6/2020",
                            //           style: black15fontsize,
                            //         ),
                            //         value: 2,
                            //       )
                            //     ],
                            //     onChanged: (value) {
                            //       setState(() {
                            //         _value = value.hashCode;
                            //       });
                            //     },
                            //     hint: const Text("Select item")),
                          ),
                        ],
                      ),
                    )),
                  ]),
                  TableRow(children: [
                    TableCell(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total Customers",
                            style: boldgrey20fontsize,
                          ),
                          Text(
                            "60",
                            style: boldblack20fontsize,
                          ),
                        ],
                      ),
                    )),
                  ]),
                  TableRow(children: [
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Invoices Generated",
                              style: boldgrey20fontsize,
                            ),
                            Text(
                              "48",
                              style: boldblack20fontsize,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ])
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Center(
                child: Column(
                  children: [
                    Text(
                      "Total Sales",
                      style: regulargrey20fontstyle,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "\$ 1,000.00",
                          style: big40fontsizeblack,
                        ),
                        SvgPicture.asset(
                          "images/homeicn.svg",
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              const Divider(
                color: colortxtgrey,
                thickness: 0.6,
              ),
              Center(
                child: Text(
                  "CONVERTION RATE",
                  style: boldbig30fontsizeblack,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: List.generate(3, (index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          routeindex[index],
                          style: black25fontsizeblack,
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Text(
                          percentagelist[index],
                          style: GoogleFonts.roboto(
                            fontSize: 25.sp,
                            color: percentagecolorlist[index],
                          ),
                        ),
                      ],
                    );
                  }).toList()),
              const Divider(
                color: colortxtgrey,
                thickness: 0.6,
              ),
              Center(
                child: Text(
                  "Accumulated Commissions",
                  style: grey25fontsize,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "\$ 170.00",
                    style: big40fontsizelightgreen,
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  SvgPicture.asset(
                    "images/homeicn.svg",
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Inventory Status",
                style: black20fontsize,
              ),
              const Divider(
                color: colortxtgrey,
                thickness: 0.6,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "On Time",
                    style: green20fontsize,
                  ),
                  Text(
                    "50",
                    style: green20fontsize,
                  )
                ],
              ),
              const Divider(
                color: colortxtgrey,
                thickness: 0.6,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Late",
                    style: red20fontsize,
                  ),
                  Text(
                    "10",
                    style: red20fontsize,
                  )
                ],
              ),
              const Divider(
                color: colortxtgrey,
                thickness: 0.6,
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Past Due Invoices",
                style: black20fontsize,
              ),
              const Divider(
                color: colortxtgrey,
                thickness: 0.6,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "COO",
                    style: black20fontsize,
                  ),
                  Text(
                    "5",
                    style: red20fontsize,
                  )
                ],
              ),
              const Divider(
                color: colortxtgrey,
                thickness: 0.6,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "30 days",
                    style: black20fontsize,
                  ),
                  Text(
                    "5",
                    style: red20fontsize,
                  )
                ],
              ),
              const Divider(
                color: colortxtgrey,
                thickness: 0.6,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future pickDateRange(BuildContext context) async {
    final initialDateRange = DateTimeRange(
      start: DateTime.now(),
      end: DateTime.now().add(Duration(hours: 24 * 3)),
    );
    final newDateRange = await showDateRangePicker(
      context: context,
      builder: (BuildContext buildContext, Widget? child) {
        return Theme(
            data: ThemeData.dark().copyWith(
              colorScheme: const ColorScheme.dark(
                primary: yellowcolor,
                onPrimary: Colors.white,
                surface: yellowcolor,
                onSurface: Colors.black,
              ),
              dialogBackgroundColor: Colors.blue[900],
            ),
            child: child!);
      },
      firstDate: DateTime(DateTime.now().year - 5),
      lastDate: DateTime(DateTime.now().year + 5),
      initialDateRange: dateRange ?? initialDateRange,
    );

    if (newDateRange == null) return;

    setState(() => dateRange = newDateRange);
  }
}
