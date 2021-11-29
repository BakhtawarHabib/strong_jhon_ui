import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:strong_jhon_ui/constants/colors.dart';
import 'package:strong_jhon_ui/constants/strings.dart';
import 'package:strong_jhon_ui/constants/styles.dart';
import 'package:strong_jhon_ui/widgets/custombtn.dart';
import 'package:strong_jhon_ui/widgets/customdivider.dart';
import 'package:strong_jhon_ui/widgets/itemwidget.dart';
import 'package:strong_jhon_ui/widgets/paymentreciptwidget.dart';

class InvoiceScreen extends StatefulWidget {
  const InvoiceScreen({Key? key}) : super(key: key);

  @override
  _InvoiceScreenState createState() => _InvoiceScreenState();
}

class _InvoiceScreenState extends State<InvoiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SvgPicture.asset(
              "images/backarrow.svg",
            ),
          ),
          backgroundColor: blackcolor,
          title: Text(
            'INVOICES',
            style: bold20yellowtxtstyle,
          ),
        ),
        body: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              SizedBox(
                height: 10.h,
              ),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "JASC & CO.CORP",
                          style: black20fontsize,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:
                                  List.generate(corpolist.length, (index) {
                                return Text(
                                  corpolist[index],
                                  style: black15fontsize,
                                );
                              })),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 3),
                    height: 150.h,
                    child: Column(
                      children: [
                        Image.asset(
                          "images/splashicn.png",
                          height: 70,
                          width: 70,
                        ),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: List.generate(invoicestermslists.length,
                                (index) {
                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    invoicestermslists[index],
                                    style: black15fontsize,
                                  ),
                                  Expanded(
                                    flex: 0,
                                    child: Text(
                                      infolist[index],
                                      style: black15fontsize,
                                    ),
                                  ),
                                ],
                              );
                            })),
                      ],
                    ),
                  ),
                )
              ]),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Tax Invoices",
                  style: black25fontsizeblack,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(taxinvoicelist.length, (index) {
                      return Text(
                        taxinvoicelist[index],
                        style: black15fontsize,
                      );
                    })),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Divider(
                  thickness: 1,
                  color: blackcolor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "2 ITEMS",
                  style: grey25fontsize,
                ),
              ),
              const CustomDivider(),
              const ItemWidget(),
              const CustomDivider(),
              const ItemWidget(),
              const CustomDivider(),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 15.w,
                        ),
                        SizedBox(
                          width: 15.w,
                        ),
                        SizedBox(
                          width: 15.w,
                        ),
                        Text(
                          "Subtotal",
                          style: boldblack20fontsize,
                        ),
                        Text(
                          "148.80",
                          style: boldblack20fontsize,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Tax is exclusive \nState Tax 10.5% @ 10.50% on 148.80",
                          style: hinttextStyle,
                          textAlign: TextAlign.end,
                        ),
                        Text(
                          "15.54",
                          style: hinttextStyle,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 15.w,
                        ),
                        SizedBox(
                          width: 15.w,
                        ),
                        SizedBox(
                          width: 15.w,
                        ),
                        Text(
                          "Total",
                          style: boldblack20fontsize,
                        ),
                        Text(
                          "\$148.80",
                          style: boldblack20fontsize,
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "X Get signature",
                        style: bluebold20fontsize,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomButn(
                            btntxt: 'Email',
                            color: yellowcolor,
                            style: boldblack20fontsize,
                          ),
                          CustomButn(
                            btntxt: 'Share',
                            color: blackcolor,
                            style: whitemediumstyle,
                          ),
                          Expanded(
                            flex: 0,
                            child: CustomButn(
                              btntxt: 'Print',
                              color: blackcolor,
                              style: whitemediumstyle,
                            ),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Divider(
                        thickness: 6,
                        color: greycolor,
                      ),
                    ),
                    Center(
                      child: Text(
                        "DELIVERY",
                        style: boldbig30fontsizeblack,
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Received by :",
                          style: black25fontsizeblack,
                        ),
                        Text(
                          "X Get signature",
                          style: bluebold20fontsize,
                        ),
                      ],
                    ),
                    const PaymentReciptWidget(),
                    Center(
                      child: Text(
                        "DELIVERED | NOT PAID",
                        style: bluelight20fontstyle,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Divider(
                        thickness: 6,
                        color: greycolor,
                      ),
                    ),
                    Center(
                      child: Text(
                        "DEPOSIT",
                        style: boldbig30fontsizeblack,
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MaterialButton(
                            shape: const RoundedRectangleBorder(
                              side: BorderSide(
                                color: blackcolor,
                              ),
                            ),
                            minWidth: 177.w,
                            height: 51.h,
                            onPressed: () {},
                            child: Text(
                              "UPLOAD",
                              style: boldbig30fontsizeblack,
                            ),
                            color: Colors.white),
                        MaterialButton(
                          minWidth: 177.w,
                          height: 51.h,
                          onPressed: () {},
                          child: Text(
                            "PAID",
                            style: mediumwhite25fontstyle,
                          ),
                          color: const Color(0xff00E600),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    )
                  ],
                ),
              )
            ])));
  }
}
