import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:strong_jhon_ui/constants/colors.dart';
import 'package:strong_jhon_ui/constants/styles.dart';
import 'package:strong_jhon_ui/customers/customer.dart';
import 'package:strong_jhon_ui/dashboard/dashboard.dart';
import 'package:strong_jhon_ui/inventory/inventory.dart';
import 'package:strong_jhon_ui/invoice/invoice.dart';

class Bottomnavigation extends StatefulWidget {
  const Bottomnavigation({Key? key}) : super(key: key);

  @override
  _BottomnavigationState createState() => _BottomnavigationState();
}

class _BottomnavigationState extends State<Bottomnavigation> {
  int _mole = 0;
  // int _currentIndex = 0;
  final tabs = [
    const DashBoardScreen(),
    const InventoryScreen(),
    CustomerScreen(),
    const InvoiceScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: BottomNavigationBar(
          showSelectedLabels: true,
          iconSize: 30.h,
          type: BottomNavigationBarType.shifting,
          backgroundColor: blackcolor,
          currentIndex: _mole,
          onTap: (index) {
            setState(() {
              _mole = index;
            });
          },
          selectedFontSize: 15,
          unselectedFontSize: 15,
          selectedItemColor: yellowcolor,
          unselectedItemColor: yellowcolor,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              backgroundColor: blackcolor,
              activeIcon: SvgPicture.asset("images/dash1icn.svg"),
              icon: SvgPicture.asset("images/dash2icn.svg"),
              label: 'Dashboard',
            ),
            BottomNavigationBarItem(
              backgroundColor: blackcolor,
              activeIcon: Image.asset("images/invent2.png"),
              icon: Stack(
                children: [
                  Image.asset("images/invent1.png"),
                  Positioned(
                    right: 0,
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(1),
                      decoration: const BoxDecoration(
                          color: Colors.red, shape: BoxShape.circle),
                      constraints: const BoxConstraints(
                        minWidth: 20,
                        minHeight: 20,
                      ),
                      child: Text(
                        '10',
                        style: boldwhite15fontsize,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ],
              ),
              label: 'Inventory',
            ),
            BottomNavigationBarItem(
              backgroundColor: blackcolor,
              activeIcon: Image.asset("images/custom1.png"),
              icon: Image.asset("images/custom2.png"),
              label: 'Customers',
            ),
            BottomNavigationBarItem(
              backgroundColor: blackcolor,
              activeIcon: Image.asset("images/invoiceactive.png"),
              icon: Stack(
                children: [
                  Image.asset("images/invoicenon.png"),
                  Positioned(
                    right: 0,
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(1),
                      decoration: const BoxDecoration(
                          color: Colors.red, shape: BoxShape.circle),
                      constraints: const BoxConstraints(
                        minWidth: 20,
                        minHeight: 20,
                      ),
                      child: Text(
                        '5',
                        style: boldwhite15fontsize,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ],
              ),
              label: 'Invoices',
            ),
          ],
        ),
      ),
      body: tabs[_mole],
    );
  }
}
