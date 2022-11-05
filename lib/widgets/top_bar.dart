import 'package:flutter/material.dart';
import '../util/colors.dart';

Widget topBar({required String title, required String description, List<Widget> actions = const [], double? width}) {
  return Row(
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
        child: SizedBox(
          width: width != null ? width - 56 : null,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: title1,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                child: Text(
                  description,
                  style: bodyText2,
                  overflow: TextOverflow.clip,
                ),
              ),
            ],
          ),
        ),
      ),
      Row(
        children: actions.isNotEmpty
            ? actions
            : [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.network(
                      'https://cdn-icons-png.flaticon.com/512/7916/7916989.png',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ],
      ),
    ],
  );
}
