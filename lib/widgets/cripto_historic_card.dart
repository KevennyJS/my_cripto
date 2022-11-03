import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../util/colors.dart';

Widget criptoHistoricCard() {
  return Padding(
    padding: const EdgeInsetsDirectional.fromSTEB(0, 12, 0, 12),
    child: Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(color: const Color(0x428377F3), borderRadius: BorderRadius.circular(16)),
          alignment:  const AlignmentDirectional(0, 0),
          child: const FaIcon(FontAwesomeIcons.ethereum, color: primary, size: 32),
        ),
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('0.00858837', style: subtitle1),
                Padding(padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0), child: Text('Aprovada', style: bodyText2)),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              Text('Segunda, 31', style: subtitle1),
              Padding(padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0), child: Text('outubro', style: bodyText2)),
            ],
          ),
        ),
      ],
    ),
  );
}
