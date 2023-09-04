import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:study_app/core/assets.dart';

import '../../core/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'STUDEASY',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 14,
            height: 17,
            color: AppColor.vanadylBlue,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'ABOUT',
              style: GoogleFonts.roboto(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: AppColor.gray),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 44, right: 44),
        child: Column(
          children: [
            // big text
            Text(
              'Get Reading!',
              style: GoogleFonts.playfairDisplay(
                fontWeight: FontWeight.w700,
                fontSize: 36,
              ),
            ),
            const SizedBox(
              height: 28,
            ),
            // small text
            Padding(
              padding: const EdgeInsets.only(bottom: 28),
              child: Text(
                'Your studying intervals have been broken down into several “focus reads”, do your best!',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
              ),
            ),
            // container with list
            Container(
              height: 401,
              width: 287,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: const [
                BoxShadow(
                  color: Color(0xFFEDF5FF), // Shadow color
                  offset: Offset(0, 10), // X and Y offset
                  blurRadius: 50, // Blur radius
                  spreadRadius: 0,
                )
              ]
              ),
              child: Column(
                children: [
                  SizedBox(height: 22,),
                  Text('UPCOMING ACTIVITIES', style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    fontSize: 10,
                    color: AppColor.gray,
                  ),),
                  SizedBox(height: 31,),
                  TaskTile(num: '01', status: 'COMPLETED', task: 'Focus Read 1', icon: SvgPicture.asset(ImageAssets.tick),),
                  TaskTile(num: '02', status: 'ONGOING', task: 'Focus Read 2', icon: SvgPicture.asset(ImageAssets.tick),),
                  TaskTile(num: '03', status: 'NEXT- 1:30pm', task: 'Focus Read 3', icon: SvgPicture.asset(ImageAssets.bookmark),),
                  TaskTile(num: '04', status: 'LATER - 3:30pm', task: 'Focus Read 4', icon: SvgPicture.asset(ImageAssets.bookmark),),
                  TaskTile(num: '05', status: '6:00pm', task: 'Focus Read 5', icon: SvgPicture.asset(ImageAssets.bookmark),),
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}

class TaskTile extends StatelessWidget {
  const TaskTile({
    super.key, required this.num, required this.status, required this.icon, required this.task,
  });
   final String num;
   final String status;
  final String task;
   final Widget icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 29, bottom: 25),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // circular number
          Text(
            num,
            style: GoogleFonts.playfairDisplay(
              fontWeight: FontWeight.w700,
              fontSize: 28,
              color: AppColor.softBlue,
            ),
          ),
          // colomn with 2 items
          Padding(
            padding: const EdgeInsets.only(left: 21, top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(status, style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  fontSize: 6,
                  color: AppColor.gray
                ),),
                Text(task, style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: AppColor.gray
                ),)
              ],
            ),
          ),
          //icon
          Padding(
            padding: const EdgeInsets.only(left: 80, top: 15),
            child: icon,
          )
        ],
      ),
    );
  }
}
