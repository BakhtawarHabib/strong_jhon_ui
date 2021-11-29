import 'package:flutter/material.dart';
import 'package:strong_jhon_ui/constants/styles.dart';

class ItemWidget extends StatefulWidget {
  const ItemWidget({Key? key}) : super(key: key);

  @override
  _ItemWidgetState createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 80,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "SJ345678 WS.",
                  style: black20fontsize,
                ),
                Text(
                  "74.40",
                  style: black20fontsize,
                )
              ],
            ),
            Text(
              "State Tax",
              style: hinttextStyle,
            ),
            Text(
              "80.00 x 0.98 each",
              style: hinttextStyle,
            ),
            Text(
              "Cut-off Wheel for Metal/inbox",
              style: hinttextStyle,
            )
          ],
        ),
      ),
    );
  }
}
