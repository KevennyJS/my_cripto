import 'package:flutter/material.dart';
import 'package:my_cripto/widgets/Spacer.dart';

import '../util/colors.dart';
import '../widgets/cripto_card.dart';
import '../widgets/cripto_historic_card.dart';
import '../widgets/top_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Column(
              children: [
                topBar(title: "My Cripto", description: "Seu portfólio de criptomoedas"),
                spacer(),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                  child: Column(
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
                                    criptoCard(
                                      name: 'Bitcoin',
                                      price: 'R\$ 50.000,00',
                                      image: 'https://cdn-icons-png.flaticon.com/512/5968/5968260.png',
                                      gradientColors: const [Color(0xFF00F2FE), Color(0xFF4FACFE)],
                                    ),
                                    criptoCard(
                                      name: 'ETH',
                                      price: 'R\$ 2.000,00',
                                      image: 'https://cdn-icons-png.flaticon.com/512/7016/7016523.png',
                                      gradientColors: [primary, secondary],
                                    ),
                                    criptoCard(
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
                ),
                topBar(
                  title: "Transações recentes",
                  description: "Uma lista de todas as suas transações esta semana.",
                  actions: [Container()],
                  width: size.width-40,
                ),
                ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    criptoHistoricCard(coin: 'ETH', status: "Aprovada", value: "0.002718746", date: DateTime.parse("2021-09-01 10:20:00")),
                    criptoHistoricCard(coin: 'ETH', status: "Aprovada", value: "0.222445", date: DateTime.parse("2021-09-01 10:20:00")),
                    criptoHistoricCard(coin: 'ETH', status: "Aprovada", value: "1.0", date: DateTime.parse("2021-09-01 10:20:00")),
                    criptoHistoricCard(coin: 'BTC', status: "Aprovada", value: "0.00786548", date: DateTime.parse("2021-09-01 10:20:00")),
                    criptoHistoricCard(coin: 'BTC', status: "Pendente", value: "0.09839", date: DateTime.parse("2021-09-01 10:20:00")),
                    criptoHistoricCard(coin: 'ETH', status: "Negada", value: "0.734582", date: DateTime.parse("2021-09-01 10:20:00")),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
