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
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        onPageChanged: onPageChanged,
        children: homeScreenItens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: navigationTapped,
        currentIndex: _page,
        selectedItemColor: primary,
        elevation: 10,
        showUnselectedLabels: true,
        unselectedItemColor: secondary,
        type: BottomNavigationBarType.fixed,
        backgroundColor: primaryBackground,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home, color: _page == 0 ? primary : secondary), label: 'Iniciar', backgroundColor: primaryBackground),
          BottomNavigationBarItem(icon: Icon(Icons.view_in_ar, color: _page == 1 ? primary : secondary), label: 'Minerar', backgroundColor: primaryBackground),
          BottomNavigationBarItem(icon: Icon(Icons.battery_charging_full, color: _page == 2 ? primary : secondary), label: 'Velocidade', backgroundColor: primaryBackground),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet, color: _page == 3 ? primary : secondary), label: 'Fatura', backgroundColor: primaryBackground),
          BottomNavigationBarItem(icon: Icon(Icons.support, color: _page == 4 ? primary : secondary), label: 'Suporte', backgroundColor: primaryBackground),
        ],
      ),
    );
  }
}
