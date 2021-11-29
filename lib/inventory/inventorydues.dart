import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:strong_jhon_ui/constants/colors.dart';
import 'package:strong_jhon_ui/constants/strings.dart';
import 'package:strong_jhon_ui/constants/styles.dart';

class InventoryDuesScreen extends StatefulWidget {
  const InventoryDuesScreen({Key? key}) : super(key: key);

  @override
  _InventoryDuesScreenState createState() => _InventoryDuesScreenState();
}

class _InventoryDuesScreenState extends State<InventoryDuesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffECECEC),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
          size: 30,
          color: yellowcolor,
        ),
        backgroundColor: blackcolor,
      ),
      appBar: AppBar(
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(15.0),
          child: InkWell(
            onTap: () {
              Get.back();
            },
            child: SvgPicture.asset(
              "images/backarrow.svg",
            ),
          ),
        ),
        backgroundColor: blackcolor,
        title: Text(
          'Costumers',
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
              "images/searchicon.svg",
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SvgPicture.asset(
              "images/menu.svg",
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "OVERDUE:",
                    style: boldblack20fontsize,
                  ),
                  Text(
                    "Balance Due",
                    style: boldgrey20fontsize,
                  ),
                ],
              ),
            ),
            Column(
              children: List.generate(
                2,
                (index) => Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 0),
                      color: whitecolor,
                      height: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: 20.h,
                              ),
                              Text(
                                names[index],
                                style: boldblack25fontsizeblack,
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                itemnums[index],
                                style: boldgrey15fontsize,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  "Amount of days due",
                                  style: bold20yellowtxtstyle,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  payments[index],
                                  style: bold18blacktxtstyle,
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  "21/9/2021",
                                  style: boldblack16font,
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  "Monday",
                                  style: boldblack16font,
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  duesconditions[index],
                                  style: boldblack16font,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      thickness: 1,
                      height: 1,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "OPEN: \$500.00",
                    style: boldblack20fontsize,
                  ),
                  Text(
                    "Balance Due",
                    style: boldgrey20fontsize,
                  ),
                ],
              ),
            ),
            Column(
              children: List.generate(
                2,
                (index) => Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 0),
                      color: whitecolor,
                      height: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: 20.h,
                              ),
                              Text(
                                names2[index],
                                style: boldblack25fontsizeblack,
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                itemnums2[index],
                                style: boldgrey15fontsize,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  "Due in 8 days",
                                  style: bold20yellowtxtstyle,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 0,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  payments2[index],
                                  style: bold18blacktxtstyle,
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  "21/9/2021",
                                  style: boldblack16font,
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  "Tuesday",
                                  style: boldblack16font,
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  "Viewed",
                                  style: boldblack16font,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      thickness: 1,
                      height: 1,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Paid:\$110",
                    style: boldblack20fontsize,
                  ),
                  Text(
                    "Total",
                    style: boldgrey20fontsize,
                  ),
                ],
              ),
            ),
            Column(
              children: List.generate(
                1,
                (index) => Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 0),
                      color: whitecolor,
                      height: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: 20.h,
                              ),
                              Text(
                                "Blake",
                                style: boldblack25fontsizeblack,
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                "#7589",
                                style: boldgrey15fontsize,
                              ),
                            ],
                          ),
                          Expanded(
                            flex: 0,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  "\$110.00",
                                  style: bold18blacktxtstyle,
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  "12/8/2021",
                                  style: boldblack16font,
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color(0xffC9F8C0),
                                  ),
                                  height: 28.h,
                                  width: 63.w,
                                  child: Text(
                                    "Paid",
                                    style: green20fontsize,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      thickness: 1,
                      height: 1,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
