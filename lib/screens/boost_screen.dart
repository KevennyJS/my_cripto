import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../util/colors.dart';
import '../widgets/Spacer.dart';
import '../widgets/top_bar.dart';

class BoostScreen extends StatefulWidget {
  const BoostScreen({Key? key}) : super(key: key);

  @override
  State<BoostScreen> createState() => _BoostScreenState();
}

class _BoostScreenState extends State<BoostScreen> {
  double sliderValue = 0;

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
                  children: [
                    topBar(title: "Mais velocidade", description: "Gerencie seus ganhos"),
                    spacer(),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: secondaryBackground,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: lineColor, width: 1),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(12, 12, 12, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: const [
                                            Expanded(flex: 2, child: Text('Plano', style: bodyText2)),
                                            Expanded(child: Text('Status', textAlign: TextAlign.end, style: bodyText2)),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                                        child: ListView(
                                          padding: EdgeInsets.zero,
                                          shrinkWrap: true,
                                          physics: const NeverScrollableScrollPhysics(),
                                          children: [
                                            card_boost(name: "Básico", description: "Minerar com a nova tecnologia", status: "Ativo"),
                                            card_boost(name: "Avançado", description: "Minerar com a nova tecnologia", status: "Inativo"),
                                            card_boost(name: "Mega", description: "Minerar com a nova tecnologia", status: "Inativo"),
                                            card_boost(name: "Ultra", description: "Minerar com a nova tecnologia", status: "Inativo"),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(0, 4, 180, 0),
                                  child: Text('Ajuste sua velocidade', textAlign: TextAlign.start, style: TextStyle(color: Color(0xFF95A1AC))),
                                ),
                                Slider(
                                  activeColor: primary,
                                  inactiveColor: const Color(0xFF9E9E9E),
                                  min: 0,
                                  max: 10,
                                  value: sliderValue ??= 0,
                                  onChanged: (newValue) => setState(() => sliderValue = newValue),
                                ),
                                const AutoSizeText('1x 1.000.000', style: TextStyle(color: primaryBtnText)),
                                const Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                                  child: AutoSizeText('Mais velocidade, sem plano!', style: TextStyle(color: Color(0xFFCD8118))),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(18, 0, 18, 10),
                child: Container(
                  height: 48,
                  decoration: BoxDecoration(
                    color: const Color(0xFFCD8118),
                    boxShadow: const [BoxShadow(blurRadius: 0, color: Color(0xFFCD8118), offset: Offset(0, 2), spreadRadius: 1)],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: const AlignmentDirectional(0, 0),
                  child: const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                    child: Text('Continuar', style: TextStyle(color: primaryBtnText)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding card_boost({required String name,required description, required String status}) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 2),
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(color: secondaryBackground, boxShadow: [BoxShadow(blurRadius: 0, color: lineColor, offset: Offset(0, 1))]),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: CachedNetworkImage(
                        imageUrl: 'https://picsum.photos/seed/274/600',
                        width: 40,
                        height: 40,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(name, style: subtitle1),
                      Padding(padding: const EdgeInsetsDirectional.fromSTEB(0, 2, 0, 0), child: Text(description, style: bodyText2)),
                    ],
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(status, style: const TextStyle(color: primary)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
