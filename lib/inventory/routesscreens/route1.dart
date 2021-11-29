import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:strong_jhon_ui/constants/colors.dart';
import 'package:strong_jhon_ui/constants/strings.dart';
import 'package:strong_jhon_ui/constants/styles.dart';
import 'package:strong_jhon_ui/inventory/itgadets/itgadets.dart';

class Route1Screen extends StatefulWidget {
  const Route1Screen({Key? key}) : super(key: key);

  @override
  _Route1ScreenState createState() => _Route1ScreenState();
}

class _Route1ScreenState extends State<Route1Screen> {
  List images = ["images/lockicn.png", "images/lockicn.png", "", "", ""];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'Inventory',
          style: bold20yellowtxtstyle,
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(25),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
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
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: ListView.builder(
          itemCount: routescolors.length,
          itemBuilder: (BuildContext context, int index) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Get.to(() => const ItGadgetsScreen());
                      },
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: blackcolor),
                            gradient: LinearGradient(
                              begin: Alignment(-2, 25),
                              end: Alignment(-1, -20),
                              colors: [
                                routescolors[index],
                                Colors.white,
                                routescolors[index],
                                routescolors[index],
                              ],
                            ),
                          ),
                          height: 75,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  // Container(
                                  //   height: 60,
                                  //   width: 60,
                                  //   decoration: const BoxDecoration(
                                  //       shape: BoxShape.circle,
                                  //       image: DecorationImage(
                                  //           fit: BoxFit.cover,
                                  //           image: AssetImage(
                                  //               "images/client1.jpg"))),
                                  // ),
                                  SizedBox(
                                    width: 10.w,
                                  ),

                                  Text(
                                    titlelist[index],
                                    style: black20fontsize,
                                  ),
                                  // Text(
                                  //   subtitlelist[index],
                                  //   style: black15fontsize,
                                  // )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Image.asset("images/lockicn.png"),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: iconscolors[index],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
