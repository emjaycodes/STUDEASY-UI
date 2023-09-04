import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:study_app/screens/onboarding/onboarding_screen.dart';

import '../../colors.dart';
import '../../routes.dart';

class SetTargetScreen extends StatefulWidget {
  SetTargetScreen({super.key});

  @override
  State<SetTargetScreen> createState() => _SetTargetScreenState();
}

class _SetTargetScreenState extends State<SetTargetScreen> {
  List<String> items = [
    "1 Hour",
    "2 Hour",
    "3 Hour",
    "4 Hour",
    "5 Hour",
    "6 Hour",
    "7 Hour"
  ];

  @override
  Widget build(BuildContext context) {
    int _selectedTime = 0;
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
      ),
      body: Column(
        children: [
          // big text
          Padding(
            padding: const EdgeInsets.only(top: 80, left: 48, right: 73),
            child: Text(
              'How long do you want to study for?',
              style: GoogleFonts.playfairDisplay(
                  fontWeight: FontWeight.w700, fontSize: 36),
            ),
          ),
          const SizedBox(
            height: 21,
          ),
          // small text
          Padding(
            padding: const EdgeInsets.only(left: 48, right: 57),
            child: Text(
              'Set your target study hours for today, you will  be prompted to study at several intervals',
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: AppColor.gray),
            ),
          ),
          const SizedBox(
            height: 71,
          ),
          // scroll picker
          Padding(
            padding: const EdgeInsets.only(left: 48, right: 48.5),
            child: CupertinoPicker(
              itemExtent: 63,
              scrollController:
                  FixedExtentScrollController(initialItem: _selectedTime),
              onSelectedItemChanged: (int index) {
                setState(() {
                  _selectedTime = index;
                });
              },
              magnification: 1.22,
              squeeze: 1.2,
              useMagnifier: true,
              children: List<Widget>.generate(items.length, (int index) {
                return Center(child: Text(items[index]));
              }),
            ),
          ),
          const Spacer(),
          // circular container
          Align(
            alignment:Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 31),
              child:  CircularContainer(
                onTap: (){
                  Navigator.of(context).pushNamed(AppRoutes.prompt);
                },
                text: Text('CONTINUE', style: GoogleFonts.roboto(
              fontWeight: FontWeight.w500,
              fontSize: 12,
              color: Colors.white,
              ),), color: AppColor.gray),
            ),
          ),
          SizedBox(height: 37,),
        ],
      ),
    );
  }
}
