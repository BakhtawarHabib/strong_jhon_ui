import 'package:alphabet_list_scroll_view/alphabet_list_scroll_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:strong_jhon_ui/constants/colors.dart';
import 'package:strong_jhon_ui/constants/styles.dart';

void main() => runApp(MainApp());

// String getRandomName() {
//   final List<String> preFix = ['Aa', 'b', 'C', 'D', 'E', 'F', 'J'];
//   final List<String> surFix = ['sad', 'bad', 'lad', 'nad', 'kat', 'pat', 'my'];
//   preFix.shuffle();
//   surFix.shuffle();
//   return '${preFix.first}${surFix.first}';
// }

class User {
  final String name;
  final String company;
  final bool favourite;

  User(this.name, this.company, this.favourite);
}

class MainApp extends StatefulWidget {
  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  List<User> userList = [];
  List<String> strList = [
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
    "G",
    "H",
    "I",
    "J",
    "K",
    "L",
    "M",
    "N",
    "O",
    "P",
    "Q",
    "R",
    "S",
    "T",
    "U",
    "V",
    "W",
    "X",
    "Y",
    "Z"
  ];
  List<Widget> favouriteList = [];
  List<Widget> normalList = [];
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    for (var i = 0; i < 4; i++) {
      userList.add(User("Axel", "Aaron", false));
    }
    for (var i = 0; i < 2; i++) {
      userList.add(User("Bryson", "Bryson", false));
    }

    for (var i = 0; i < 4; i++) {
      userList.add(User("Craxton", "Craxton", false));
    }
    for (var i = 0; i < 2; i++) {
      userList.add(User("d", "d", false));
    }
    for (var i = 0; i < 2; i++) {
      userList.add(User("e", "e", false));
    }
    for (var i = 0; i < 2; i++) {
      userList.add(User("f", "f", false));
    }
    for (var i = 0; i < 2; i++) {
      userList.add(User("g", "g", false));
    }
    for (var i = 0; i < 2; i++) {
      userList.add(User("h", "h", false));
    }
    for (var i = 0; i < 2; i++) {
      userList.add(User("i", "i", false));
    }
    for (var i = 0; i < 2; i++) {
      userList.add(User("j", "j", false));
    }
    for (var i = 0; i < 2; i++) {
      userList.add(User("k", "k", false));
    }
    for (var i = 0; i < 2; i++) {
      userList.add(User("l", "l", false));
    }
    for (var i = 0; i < 2; i++) {
      userList.add(User("m", "m", false));
    }
    for (var i = 0; i < 2; i++) {
      userList.add(User("n", "n", false));
    }
    for (var i = 0; i < 2; i++) {
      userList.add(User("o", "o", false));
    }
    for (var i = 0; i < 2; i++) {
      userList.add(User("p", "p", false));
    }
    for (var i = 0; i < 2; i++) {
      userList.add(User("q", "q", false));
    }
    for (var i = 0; i < 2; i++) {
      userList.add(User("r", "r", false));
    }
    for (var i = 0; i < 2; i++) {
      userList.add(User("s", "s", false));
    }
    for (var i = 0; i < 2; i++) {
      userList.add(User("t", "t", false));
    }
    for (var i = 0; i < 2; i++) {
      userList.add(User("u", "u", false));
    }
    for (var i = 0; i < 2; i++) {
      userList.add(User("v", "v", false));
    }
    for (var i = 0; i < 2; i++) {
      userList.add(User("w", "w", false));
    }
    for (var i = 0; i < 2; i++) {
      userList.add(User("x", "x", false));
    }
    for (var i = 0; i < 2; i++) {
      userList.add(User("y", "y", false));
    }
    for (var i = 0; i < 2; i++) {
      userList.add(User("z", "z", false));
    }
    userList
        .sort((a, b) => a.name.toLowerCase().compareTo(b.name.toLowerCase()));
    filterList();
    searchController.addListener(() {
      filterList();
    });
    super.initState();
  }

  filterList() {
    List<User> users = [];
    users.addAll(userList);
    favouriteList = [];
    normalList = [];
    strList = [];
    if (searchController.text.isNotEmpty) {
      users.retainWhere((user) => user.name
          .toLowerCase()
          .contains(searchController.text.toLowerCase()));
    }
    users.forEach((user) {
      if (user.favourite) {
        favouriteList.add(
          Slidable(
            actionPane: const SlidableDrawerActionPane(),
            actionExtentRatio: 0.55,
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    user.name,
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                const Divider()
              ],
            ),
          ),
        );
      } else {
        normalList.add(
          Slidable(
            actionPane: const SlidableDrawerActionPane(),
            actionExtentRatio: 0.25,
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    user.name,
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                const Divider()
              ],
            ),
          ),
        );
        strList.add(user.name);
      }
    });

    setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
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
      body: AlphabetListScrollView(
        strList: strList,
        highlightTextStyle: const TextStyle(
          color: Colors.yellow,
        ),
        normalTextStyle: const TextStyle(color: bluecolor),
        showPreview: true,
        itemBuilder: (context, index) {
          return normalList[index];
        },
        indexedHeight: (i) {
          return 80;
        },
        keyboardUsage: true,
      ),
    ));
  }
}
