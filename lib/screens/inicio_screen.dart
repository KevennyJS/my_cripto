import 'package:flutter/material.dart';
import 'package:my_cripto/widgets/Spacer.dart';
import 'package:my_cripto/widgets/credit_cards/usdt_card.dart';

import '../util/colors.dart';
import '../widgets/credit_cards/btc_card.dart';
import '../widgets/credit_cards/eth_card.dart';
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
        body: SingleChildScrollView(
          child: SizedBox(
            height: size.height+100,
            width: size.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
              child: Column(
                children: [
                  topBar(),
                  spacer(),
                  spacer(),
                  Expanded(
                    flex: 4,
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
                              children: const [
                                TabBar(
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
                                      BTCCard(),
                                      ETHCard(),
                                      USDTCard(),
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
