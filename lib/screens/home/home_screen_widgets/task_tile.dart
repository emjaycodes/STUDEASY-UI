import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/colors.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    super.key,
    required this.num,
    required this.status,
    required this.icon,
    required this.task,
  });
  final String num;
  final String status;
  final String task;
  final Widget icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 29, bottom: 25),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // circular number
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 21),
            child: Text(
              num,
              style: GoogleFonts.playfairDisplay(
                fontWeight: FontWeight.w700,
                fontSize: 28,
                color: AppColor.softBlue,
              ),
            ),
          ),
          // colomn with 2 items
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  status,
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w500,
                      fontSize: 6,
                      color: AppColor.gray),
                ),
                Text(
                  task,
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: AppColor.gray),
                )
              ],
            ),
          ),
          //icon
          const SizedBox(
            width: 80,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: icon,
            ),
          )
        ],
      ),
    );
  }
}
