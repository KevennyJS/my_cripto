import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../util/colors.dart';
import '../widgets/Spacer.dart';
import '../widgets/top_bar.dart';

class MiningScreen extends StatefulWidget {
  const MiningScreen({Key? key}) : super(key: key);

  @override
  State<MiningScreen> createState() => _MiningScreenState();
}

class _MiningScreenState extends State<MiningScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  topBar(title: "Mineração", description: "Suas estatisticas de mineração"),
                  spacer(),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                    child: ListView(
                      padding: EdgeInsets.zero,
                      primary: false,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(0, 12, 0, 12),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(color: const Color(0x428377F3), borderRadius: BorderRadius.circular(16)),
                                alignment: const AlignmentDirectional(0, 0),
                                child: const Icon(Icons.tune_sharp, color: primary, size: 32),
                              ),
                              Expanded(
                                flex: 4,
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text('Plano', style: title2),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                        child: Text('Atualizar plano', style: bodyText2),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text('Básico', style: subtitle1),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(0, 12, 0, 12),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(color: const Color(0x51FD6570), borderRadius: BorderRadius.circular(16)),
                                alignment: const AlignmentDirectional(0, 0),
                                child: const Icon(Icons.ev_station, color: Colors.white, size: 32),
                              ),
                              Expanded(
                                flex: 4,
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text('Velocidade', style: title2),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                        child: InkWell(
                                          onTap: () async {},
                                          child: const Text('Mais velocidade', style: bodyText2),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text('500', style: subtitle1),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                        child: Text('Mil linhas por segundo', style: bodyText2),
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
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 24, 12, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [Text('Mineração', style: title2)],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 270,
                    child: ListView(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(4, 12, 16, 12),
                          child: Container(
                            width: 330,
                            decoration: BoxDecoration(
                              boxShadow: const [BoxShadow(blurRadius: 4, color: Color(0x2B202529), offset: Offset(0, 2))],
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(color: lineColor, width: 1),
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      SizedBox(
                                        width: 100,
                                        height: 70,
                                        child: Stack(
                                          children: [
                                            ClipRRect(
                                              borderRadius: BorderRadius.circular(8),
                                              child: Image.network(
                                                'https://cdn-icons-png.flaticon.com/512/2000/2000661.png',
                                                width: 100,
                                                height: 70,
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Expanded(
                                        child: Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                                          child: Text(
                                            'My Crypto.online',
                                            style: subtitle1,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                                    child: Text(
                                      'Versão mais atualizada e ótimizada de minerar cripotmoedas e só aqui voce pode descriptografar a tecnologia blockchain',
                                      style: bodyText2,
                                    ),
                                  ),
                                  const Divider(
                                    height: 24,
                                    thickness: 2,
                                    color: lineColor,
                                  ),
                                  Row(
                                    children: [
                                      IconButton(
                                        onPressed: () async {},
                                        icon: const Icon(Icons.view_in_ar, size: 15),
                                      ),
                                      Text('Iniciar', style: bodyText1),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            CircularPercentIndicator(
              percent: 0.5,
              radius: 60,
              lineWidth: 24,
              animation: true,
              progressColor: primary,
              backgroundColor: const Color(0xFFF1F4F8),
              center: const Text('50%', style: TextStyle(color: primary)),
            ),
            const SizedBox(height: 20),
          ],
        ),
      )),
    );
  }
}
