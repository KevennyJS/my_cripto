import 'package:flutter/material.dart';

import '../screens/inicio_screen.dart';

const webScreenSize = 600;

List<Widget> homeScreenItens = [
  const InicioScreen(),
  const Center(
    child: Text("Minerar"),
  ),
  const Center(
    child: Text("Velocidade"),
  ),
  const Center(
    child: Text("Fatura"),
  ),
  const Center(
    child: Text("Suporte"),
  ),
];
