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
      appBar: AppBar(
        backgroundColor: mobileBackgroundColor,
        centerTitle: false,
        title: const Icon(Icons.view_in_ar, color: Colors.purple),
        actions: [
          IconButton(onPressed: () => navigationTapped(0), icon: Icon(Icons.home, color: _page == 0 ? primaryColor : secondaryColor)),
          IconButton(onPressed: () => navigationTapped(1), icon: Icon(Icons.search, color: _page == 1 ? primaryColor : secondaryColor)),
          IconButton(onPressed: () => navigationTapped(2), icon: Icon(Icons.messenger_outlined, color: _page == 2 ? primaryColor : secondaryColor)),
          IconButton(onPressed: () => navigationTapped(3), icon: Icon(Icons.favorite, color: _page == 3 ? primaryColor : secondaryColor)),
          IconButton(onPressed: () => navigationTapped(4), icon: Icon(Icons.person, color: _page == 4 ? primaryColor : secondaryColor)),
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
