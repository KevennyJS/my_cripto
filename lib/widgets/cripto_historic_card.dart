import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../util/colors.dart';

getIcon({required String coin}) {
  switch(coin){
    case 'BTC':
      return FontAwesomeIcons.bitcoin;
    case 'ETH':
      return FontAwesomeIcons.ethereum;
  }
  return FontAwesomeIcons.unlockKeyhole;
}

Widget criptoHistoricCard({required String coin, required String value, required String status, required DateTime date}) {
  return Padding(
    padding: const EdgeInsetsDirectional.fromSTEB(0, 12, 0, 12),
    child: Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(color: status == 'Aprovada' ? const Color(0xFF2D2C4D) : status == 'Pendente'? const Color(0xFFC7801A) : const Color(0xFF5B2C2F), borderRadius: BorderRadius.circular(16)),
          alignment: const AlignmentDirectional(0, 0),
          child: FaIcon(getIcon(coin: coin), color: status == 'Aprovada' ? const Color(0xFF8377F3) : status == 'Pendente'? const Color(0xFFF0B156) : const Color(0xFFFD6570), size: 32),
          //aprovada #8377F3
          //pendente #F0B156
          //negada #FD6570
        ),
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(value, style: subtitle1),
                Padding(padding: const EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0), child: Text(status, style: bodyText2)),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('Sabado, ${date.day}', style: subtitle1),
              const Padding(padding:  EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0), child: Text("Outubro", style: bodyText2)),
            ],
          ),
        ),
      ],
    ),
  );
}
