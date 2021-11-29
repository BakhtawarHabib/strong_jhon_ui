import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:group_list_view/group_list_view.dart';
import 'package:strong_jhon_ui/constants/colors.dart';
import 'package:strong_jhon_ui/constants/styles.dart';
import 'package:strong_jhon_ui/widgets/customtxtfield.dart';

import 'a.corpscreen.dart';

Map<String, List> _elements = {
  'A': ['Axel', 'Aaron', 'Austin', 'Asher'],
  'B': ['Bryson', 'Braxton', 'Blake', 'Bentley'],
  'C': ['Cryson', 'Craxton', 'Clake', 'Centley'],
};

class CustomerScreen extends StatelessWidget {
  const CustomerScreen({Key? key}) : super(key: key);

  Widget _itemBuilder(BuildContext context, IndexPath index) {
    String user = _elements.values.toList()[index.section][index.index];
    return ListTile(
        title: Text(
          user,
          style: boldblack25fontsizeblack,
        ),
        onTap: () {
          print(user);
        });
  }

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
              onTap: () {
                Get.to(() => const ACropScreen());
              },
              child: SvgPicture.asset(
                "images/menu.svg",
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              color: const Color(0xffECECEC),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SearchTextField(
                  width: MediaQuery.of(context).size.width,
                  lableText: "Search",
                  onChanged: null,
                  validator: null,
                ),
              ),
            ),
            GroupListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              sectionsCount: _elements.keys.toList().length,
              countOfItemInSection: (int section) {
                return _elements.values.toList()[section].length;
              },
              itemBuilder: _itemBuilder,
              groupHeaderBuilder: (BuildContext context, int section) {
                return Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Container(
                        color: const Color(0xffECECEC),
                        height: 70,
                        padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(_elements.keys.toList()[section],
                              style: boldblack25fontsizeblack),
                        )));
              },
              separatorBuilder: (context, index) => const Divider(
                color: greycolor,
                thickness: 0.7,
                height: 1,
              ),
              // sectionSeparatorBuilder: (context, section) => SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}
