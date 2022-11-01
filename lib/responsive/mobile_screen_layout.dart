import 'package:flutter/material.dart';

import '../util/colors.dart';
import '../util/global_variables.dart';

class MobileScreenLayout extends StatefulWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  State<MobileScreenLayout> createState() => _MobileScreenLayoutState();
}

class _MobileScreenLayoutState extends State<MobileScreenLayout> {
  int _page = 0;
  late PageController pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pageController.dispose();
  }

  void navigationTapped(int page) {
    pageController.jumpToPage(page);
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        onPageChanged: onPageChanged,
        children: homeScreenItens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: navigationTapped,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home, color: _page == 0 ? primaryColor : secondaryColor), label: '', backgroundColor: primaryColor),
          BottomNavigationBarItem(icon: Icon(Icons.view_in_ar, color: _page == 1 ? primaryColor : secondaryColor), label: '', backgroundColor: primaryColor),
          BottomNavigationBarItem(icon: Icon(Icons.battery_charging_full, color: _page == 2 ? primaryColor : secondaryColor), label: '', backgroundColor: primaryColor),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet, color: _page == 3 ? primaryColor : secondaryColor), label: '', backgroundColor: primaryColor),
          BottomNavigationBarItem(icon: Icon(Icons.support, color: _page == 4 ? primaryColor : secondaryColor), label: '', backgroundColor: primaryColor),
        ],
      ),
    );
  }
}
