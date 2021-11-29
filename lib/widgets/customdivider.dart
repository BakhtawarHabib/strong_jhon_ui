import 'package:flutter/material.dart';
import 'package:strong_jhon_ui/constants/colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Divider(
        thickness: 0.2,
        color: blackcolor,
      ),
    );
  }
}
