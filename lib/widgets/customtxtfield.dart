import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:strong_jhon_ui/constants/colors.dart';
import 'package:strong_jhon_ui/constants/styles.dart';

class CustomTextField extends StatelessWidget {
  final validator;
  final lableText;
  final onIconPressed;
  final onChanged;
  final isPassword;
  final controller;
  double width;

  CustomTextField({
    this.controller,
    @required this.lableText,
    required this.width,
    this.onIconPressed,
    @required this.validator,
    @required this.onChanged,
    this.isPassword = false,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
      child: Container(
        height: 48.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: yellowcolor)),
        width: width.w,
        child: TextFormField(
          controller: this.controller,
          onChanged: onChanged,
          validator: validator,
          cursorColor: blackcolor,
          obscureText: false,
          textAlign: TextAlign.left,
          decoration: InputDecoration(
            suffixIcon: Icon(
              Icons.check,
              color: yellowcolor,
            ),
            prefixIcon: Icon(
              Icons.mail,
              color: greycolor,
            ),
            border: InputBorder.none,
            errorStyle:
                TextStyle(fontSize: 9.7, height: 0.06, color: Colors.red),
            hintText: lableText,
            hintStyle: hinttextStyle,
          ),
        ),
      ),
    );
  }
}

class CustomTextFieldPassword extends StatelessWidget {
  final validator;
  final lableText;
  final onIconPressed;
  final onChanged;
  final isPassword;
  final controller;
  double width;

  CustomTextFieldPassword({
    this.controller,
    @required this.lableText,
    required this.width,
    this.onIconPressed,
    @required this.validator,
    @required this.onChanged,
    this.isPassword = false,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
      child: Container(
        height: 48.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: yellowcolor)),
        width: width.w,
        child: TextFormField(
          controller: this.controller,
          onChanged: onChanged,
          validator: validator,
          cursorColor: blackcolor,
          obscureText: true,
          textAlign: TextAlign.left,
          decoration: InputDecoration(
            suffixIcon: Icon(
              Icons.check,
              color: yellowcolor,
            ),
            prefixIcon: Icon(
              Icons.lock_outlined,
              color: greycolor,
            ),
            border: InputBorder.none,
            errorStyle:
                TextStyle(fontSize: 9.7, height: 0.06, color: Colors.red),
            hintText: lableText,
            hintStyle: hinttextStyle,
          ),
        ),
      ),
    );
  }
}

class SearchTextField extends StatelessWidget {
  final validator;
  final lableText;
  final onIconPressed;
  final onChanged;
  final isPassword;
  final controller;
  double width;

  SearchTextField({
    this.controller,
    @required this.lableText,
    required this.width,
    this.onIconPressed,
    @required this.validator,
    @required this.onChanged,
    this.isPassword = false,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
      child: Container(
        height: 48.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: blackcolor)),
        width: width.w,
        child: TextFormField(
          controller: this.controller,
          onChanged: onChanged,
          validator: validator,
          cursorColor: blackcolor,
          obscureText: false,
          textAlign: TextAlign.left,
          decoration: InputDecoration(
            prefixIcon: const Icon(
              Icons.search,
              color: greycolor,
            ),
            border: InputBorder.none,
            errorStyle:
                const TextStyle(fontSize: 9.7, height: 0.06, color: Colors.red),
            hintText: lableText,
            hintStyle: hinttextStyle,
          ),
        ),
      ),
    );
  }
}
