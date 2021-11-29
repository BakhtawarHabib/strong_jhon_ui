import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:strong_jhon_ui/constants/colors.dart';
import 'package:strong_jhon_ui/constants/styles.dart';

class PaymentReciptWidget extends StatelessWidget {
  const PaymentReciptWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
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
                "Payment Receipt",
                style: white20fontstyle,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: whitecolor,
                    alignment: Alignment.center,
                    width: 195.w,
                    height: 41.h,
                    child: Text(
                      "Receipt No .",
                      style: boldblack20fontsize,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Submit",
                      style: whitemediumstyle,
                    ),
                    color: blackcolor,
                    width: 134.w,
                    height: 41.h,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
