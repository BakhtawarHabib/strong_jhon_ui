import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:strong_jhon_ui/constants/colors.dart';
import 'package:strong_jhon_ui/constants/strings.dart';
import 'package:strong_jhon_ui/constants/styles.dart';

class ACropScreen extends StatefulWidget {
  const ACropScreen({Key? key}) : super(key: key);

  @override
  _ACropScreenState createState() => _ACropScreenState();
}

class _ACropScreenState extends State<ACropScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            child: InkWell(
              onTap: () {},
              child: SvgPicture.asset(
                "images/menu.svg",
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10.h,
          ),
          Center(
            child: Text(
              "A Corp.",
              style: boldbig30fontsizeblack,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Divider(
              thickness: 1,
              color: blackcolor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                  aboutinfolist.length,
                  (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          aboutinfolist[index],
                          style: black20fontsize,
                        ),
                      )),
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Container(
                height: 53.h,
                width: 349.w,
                color: blackcolor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Period 30 days ",
                      style: yellow15fontsize,
                    ),
                    Text(
                      "Start 1",
                      style: yellow15fontsize,
                    )
                  ],
                ),
              )),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 194.h,
                width: 369.w,
                color: const Color(0xffBFBFBF),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Certification of Exsemption",
                      style: white15fontsize,
                    ),
                    MaterialButton(
                        minWidth: 224.w,
                        height: 52.h,
                        onPressed: () {},
                        child: Text(
                          "UPLOAD",
                          style: boldbig30fontsizeblack,
                        ),
                        color: yellowcolor),
                    Container(
                      color: whitecolor,
                      alignment: Alignment.center,
                      width: 293.w,
                      height: 41.h,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Expires",
                              style: black20fontsize,
                            ),
                            SvgPicture.asset("images/arrowdown.svg")
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
            child: Text(
              "Activity",
              style: boldblack20fontsize,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            child: Divider(
              thickness: 1,
              color: blackcolor,
            ),
          ),
          Column(
              children: List.generate(
            2,
            (index) => Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Container(
                  decoration: BoxDecoration(
                      color: colortxtgrey.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(15)),
                  height: 53.h,
                  width: 349.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        activity1[index],
                        style: black20fontsize,
                      ),
                      Text(
                        activity2[index],
                        style: black20fontsize,
                      )
                    ],
                  ),
                )),
          )),
        ],
      )),
    );
  }
}
