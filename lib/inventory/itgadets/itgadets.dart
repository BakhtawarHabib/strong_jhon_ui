import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:strong_jhon_ui/constants/colors.dart';
import 'package:strong_jhon_ui/constants/styles.dart';
import 'package:strong_jhon_ui/invoice/invoice.dart';

import '../inventorydues.dart';

class ItGadgetsScreen extends StatefulWidget {
  const ItGadgetsScreen({Key? key}) : super(key: key);

  @override
  _ItGadgetsScreenState createState() => _ItGadgetsScreenState();
}

class _ItGadgetsScreenState extends State<ItGadgetsScreen> {
  final TextEditingController stockcntrler = TextEditingController();
  int _n = 10;
  void add() {
    setState(() {
      _n++;
    });
  }

  void minus() {
    setState(() {
      if (_n != 0) _n--;
    });
  }

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
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  decoration: const BoxDecoration(color: blackcolor),
                  height: 75,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 15.w,
                          ),
                          Container(
                            height: 60,
                            width: 60,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("images/client1.jpg"))),
                          ),
                          SizedBox(
                            width: 30.w,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "IT Gadgets",
                                style: white15fontsize,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Period : 30 days ",
                                    style: yellow15fontsize,
                                  ),
                                  SizedBox(
                                    width: 20.w,
                                  ),
                                  Text(
                                    "Start : 1",
                                    style: yellow15fontsize,
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Expanded(
                          child: SvgPicture.asset("images/itgadeticnmenu.svg"))
                    ],
                  )),
            ),
            SizedBox(
              height: 10.h,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: List.generate(7, (index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Container(
                      decoration: BoxDecoration(
                          color: blackcolor,
                          borderRadius: BorderRadius.circular(10)),
                      height: 75.h,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 15.w,
                              ),
                              Container(
                                height: 50.h,
                                width: 50.w,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage("images/item.png"))),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 30.h,
                                    width: 290.w,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "ITEM NO #",
                                          style: yellow15fontsize,
                                        ),
                                        Text(
                                          "SGH45265",
                                          style: boldwhite10fontsize,
                                        ),
                                        SizedBox(
                                          width: 20.w,
                                        ),
                                        Expanded(
                                          flex: 0,
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10),
                                            child: MaterialButton(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              onPressed: () {
                                                Get.to(() =>
                                                    const InventoryDuesScreen());
                                              },
                                              minWidth: 66.w,
                                              height: 21.h,
                                              color: yellowcolor,
                                              child: const Text("Detail"),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 290.w,
                                    height: 40.h,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            createboarddialog(context);
                                          },
                                          child: Column(
                                            children: [
                                              Text(
                                                "STOCK",
                                                style: yellow10fontsize,
                                              ),
                                              SizedBox(
                                                width: 20.w,
                                              ),
                                              Text(
                                                "25",
                                                style: boldwhite10fontsize,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              "SOLD",
                                              style: yellow10fontsize,
                                            ),
                                            SizedBox(
                                              width: 20.w,
                                            ),
                                            Text(
                                              "25",
                                              style: boldwhite10fontsize,
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              "SALE",
                                              style: yellow10fontsize,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 20),
                                              child: Row(
                                                children: [
                                                  InkWell(
                                                    onTap: add,
                                                    child: Container(
                                                      alignment:
                                                          Alignment.center,
                                                      color: whitecolor,
                                                      height: 20,
                                                      width: 20,
                                                      child: const Icon(
                                                        Icons.add,
                                                        size: 15,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 5.w,
                                                  ),
                                                  Text(
                                                    "$_n",
                                                    style: boldwhite10fontsize,
                                                  ),
                                                  SizedBox(
                                                    width: 5.w,
                                                  ),
                                                  InkWell(
                                                    onTap: minus,
                                                    child: Container(
                                                      alignment:
                                                          Alignment.center,
                                                      color: whitecolor,
                                                      height: 20,
                                                      width: 20,
                                                      child: const Icon(
                                                        Icons.remove,
                                                        size: 15,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      )),
                );
              }),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              MaterialButton(
                elevation: 0.0,
                color: blackcolor.withOpacity(0.3),
                child: Text(
                  'Summary',
                  style: whitemediumstyle,
                ),
                height: 30.h,
                minWidth: 160.w,
                onPressed: () {},
              ),
              SizedBox(
                width: 10.w,
              ),
              MaterialButton(
                elevation: 0.0,
                color: blackcolor,
                child: Text(
                  'Save',
                  style: whitemediumstyle,
                ),
                height: 30.h,
                minWidth: 160.w,
                onPressed: () {},
              )
            ]),
            MaterialButton(
              elevation: 0.0,
              color: yellowcolor,
              child: Text(
                'Create Invoices',
                style: bold18blacktxtstyle,
              ),
              height: 41.h,
              minWidth: 203.w,
              onPressed: () {
                // Get.to(() => const InvoiceScreen());
              },
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Divider(
                thickness: 1,
              ),
            )
          ],
        ),
      ),
    );
  }

  void createboarddialog(
    BuildContext context,
  ) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              backgroundColor: blackcolor,
              insetPadding:
                  const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              content: Container(
                  decoration: BoxDecoration(
                      color: blackcolor,
                      border: Border.all(color: yellowcolor)),
                  width: 246.0.w,
                  height: 89.h, // Change as per your requirement
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 10.h,
                      ),
                      Center(
                          child: Text("ITEM # SGH376357",
                              style: white20fontstyle)),
                      SizedBox(
                        height: 5.h,
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("STOCK", style: bold16yellowtxtstyle),
                            Container(
                              height: 33.h,
                              decoration: BoxDecoration(color: whitecolor),
                              width: 95.w,
                              child: TextFormField(
                                controller: stockcntrler,
                                // onChanged: onChanged,
                                // validator: validator,
                                cursorColor: blackcolor,
                                obscureText: false,
                                textAlign: TextAlign.left,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  errorStyle: const TextStyle(
                                      fontSize: 9.7,
                                      height: 0.06,
                                      color: Colors.red),
                                  hintText: "",
                                  hintStyle: hinttextStyle,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )));
        });
  }
}
