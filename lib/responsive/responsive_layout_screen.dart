import 'package:flutter/material.dart';
import '../util/global_variables.dart';

class ResponsiveLayout extends StatefulWidget {
  final Widget desktopScreenLayout;
  final Widget mobileScreenLayout;

  const ResponsiveLayout({Key? key, required this.desktopScreenLayout, required this.mobileScreenLayout}) : super(key: key);

  @override
  State<ResponsiveLayout> createState() => _ResponsiveLayoutState();
}

class _ResponsiveLayoutState extends State<ResponsiveLayout> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    addData();
  }

  addData() async {
    // UserProvider _userProvider = Provider.of(context, listen: false);
    // await _userProvider.refreshUser();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        if (constraints.maxWidth > webScreenSize) {
          return widget.desktopScreenLayout;
        }
        return widget.mobileScreenLayout;
      },
    );
  }
}
