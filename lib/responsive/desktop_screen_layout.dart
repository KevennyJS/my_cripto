import 'package:flutter/material.dart';

import '../util/colors.dart';
import '../util/global_variables.dart';

class DesktopScreenLayout extends StatefulWidget {
  const DesktopScreenLayout({Key? key}) : super(key: key);

  @override
  State<DesktopScreenLayout> createState() => _DesktopScreenLayoutState();
}

class _DesktopScreenLayoutState extends State<DesktopScreenLayout> {
  int _page = 0;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
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
      appBar: AppBar(
        backgroundColor: primaryBackground,
        centerTitle: false,
        title: const Icon(Icons.view_in_ar, color: Colors.purple),
        actions: [
          IconButton(onPressed: () => navigationTapped(0), icon: Icon(Icons.home, color: _page == 0 ? primary : secondary)),
          IconButton(onPressed: () => navigationTapped(1), icon: Icon(Icons.view_in_ar, color: _page == 1 ? primary : secondary)),
          IconButton(onPressed: () => navigationTapped(2), icon: Icon(Icons.battery_charging_full, color: _page == 2 ? primary : secondary)),
          IconButton(onPressed: () => navigationTapped(3), icon: Icon(Icons.account_balance_wallet, color: _page == 3 ? primary : secondary)),
          IconButton(onPressed: () => navigationTapped(4), icon: Icon(Icons.support, color: _page == 4 ? primary : secondary)),
        ],
      ),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        onPageChanged: onPageChanged,
        children: homeScreenItens,
      ),
    );
  }
}
