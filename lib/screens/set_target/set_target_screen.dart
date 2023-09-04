import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:study_app/screens/onboarding/onboarding_screen.dart';

import '../../colors.dart';

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

  String selectedItem = "I1 Hour";

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
      ),
      body: Column(
        children: [
          // big text
          Text(
            'How long do you want to study for?',
            style: GoogleFonts.playfairDisplay(
                fontWeight: FontWeight.w700, fontSize: 36),
          ),
          // small text
          Text(
            'Set your target study hours for today, you will  be prompted to study at several intervals',
            style: GoogleFonts.roboto(
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: AppColor.gray),
          ),
          // scroll picker
          CupertinoPicker(
            itemExtent: 40,
            onSelectedItemChanged: (int index) {
              setState(() {
                selectedItem = items[index];
              });
            },
            children: items.map((String item) {
              return Center(
                child: Text(item),
              );
            }).toList(),
            useMagnifier: true, // Enable magnifier
            magnification: 1.2, // Magnification factor
            // diameterRatio: 1.1, // Diameter ratio
            // squeeze: 1.2, // Squeeze factor
          ),
          // circular container
          CircularContainer(text: Text('CONTINUE'), color: AppColor.gray)
        ],
      ),
    );
  }
}
