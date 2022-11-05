import 'package:flutter/material.dart';

import '../screens/boost_screen.dart';
import '../screens/home_screen.dart';
import '../screens/mining_screen.dart';

const webScreenSize = 600;

List<Widget> homeScreenItens = [
  const HomeScreen(),
  const MiningScreen(),
  const BoostScreen(),
  const Center(
    child: Text("Fatura"),
  ),
  const Center(
    child: Text("Suporte"),
  ),
];
