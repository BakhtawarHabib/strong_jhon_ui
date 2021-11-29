import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:strong_jhon_ui/constants/colors.dart';

class CustomButn extends StatelessWidget {
  String btntxt;
  Color color;
  TextStyle style;
  CustomButn(
      {Key? key,
      required this.btntxt,
      required this.color,
      required this.style})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 123.w,
      height: 50.h,
      onPressed: () {},
      child: Text(
        btntxt,
        style: style,
      ),
      color: color,
    );
  }
}
