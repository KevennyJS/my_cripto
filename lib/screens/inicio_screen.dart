import 'package:flutter/material.dart';
import 'package:my_cripto/widgets/Spacer.dart';

import '../util/colors.dart';
import '../widgets/cripto_card.dart';
import '../widgets/cripto_historic_card.dart';
import '../widgets/topBar.dart';

class InicioScreen extends StatefulWidget {
  const InicioScreen({Key? key}) : super(key: key);

  @override
  State<InicioScreen> createState() => _InicioScreenState();
}

class _InicioScreenState extends State<InicioScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: size.height + 100,
          width: size.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
              child: Column(
                children: [
                  topBar(),
                  spacer(),
                  spacer(),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Olá, seja bem vindo', style: title2),
                      SizedBox(
                        height: 300,
                        child: DefaultTabController(
                          length: 3,
                          initialIndex: 0,
                          child: Column(
                            children: [
                              const TabBar(
                                labelColor: primaryText,
                                unselectedLabelColor: secondaryText,
                                labelStyle: bodyText1,
                                indicatorColor: primaryText,
                                indicatorWeight: 1,
                                tabs: [
                                  Tab(text: 'Bitcoin'),
                                  Tab(text: 'ETH'),
                                  Tab(text: 'USDT'),
                                ],
                              ),
                              Expanded(
                                child: TabBarView(
                                  children: [
                                    CriptoCard(
                                      name: 'Bitcoin',
                                      price: 'R\$ 50.000,00',
                                      image: 'https://cdn-icons-png.flaticon.com/512/5968/5968260.png',
                                      gradientColors: const [Color(0xFF00F2FE), Color(0xFF4FACFE)],
                                    ),
                                    CriptoCard(
                                      name: 'ETH',
                                      price: 'R\$ 2.000,00',
                                      image: 'https://cdn-icons-png.flaticon.com/512/7016/7016523.png',
                                      gradientColors: [primary, secondary],
                                    ),
                                    CriptoCard(
                                      name: 'USDT',
                                      price: 'R\$ 1.000,00',
                                      image: 'https://cryptologos.cc/logos/tether-usdt-logo.png',
                                      gradientColors: const [Color(0xFFFF5858), Color(0xFFD43F8D)],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  topBar(),
                  ListView(
                    shrinkWrap: true,
                    children: [
                      criptoHistoricCard(),
                      criptoHistoricCard(),
                      criptoHistoricCard(),
                      criptoHistoricCard(),
                      criptoHistoricCard(),
                      criptoHistoricCard(),
                      criptoHistoricCard(),
                      criptoHistoricCard(),
                      criptoHistoricCard(),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
