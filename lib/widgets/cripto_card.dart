import 'package:flutter/material.dart';

import '../../util/colors.dart';

Widget CriptoCard({Key? key, required List<Color> gradientColors, required String image, required String name, required String price}) {
  return Padding(
    padding: const EdgeInsetsDirectional.fromSTEB(8, 20, 8, 20),
    child: Container(
      width: double.infinity,
      height: 210,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            blurRadius: 6,
            color: Color(0x4B1A1F24),
            offset: Offset(0, 2),
          )
        ],
        gradient: LinearGradient(
          colors: gradientColors,
          stops: const [0, 1],
          begin: const AlignmentDirectional(1, -1),
          end: const AlignmentDirectional(-1, 1),
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Image.network(
                    image,
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20, 32, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  InkWell(
                    onTap: () async {},
                    child: const Text(
                      'Saldo',
                      style: TextStyle(
                        fontFamily: 'Outfit',
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20, 8, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    price,
                    style: const TextStyle(
                      fontFamily: 'Outfit',
                      color: primaryBtnText,
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
