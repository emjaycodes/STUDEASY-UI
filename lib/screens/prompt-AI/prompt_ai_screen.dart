import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:study_app/core/widgets/circular_container.dart';


import '../../core/assets.dart';
import '../../core/colors.dart';
import '../../core/routes.dart';


class PromptAiScreen extends StatelessWidget {
  const PromptAiScreen({super.key});

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
      body: Padding(
        padding: const EdgeInsets.only(right: 51, left: 50, bottom: 33),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // image
            Center(
                child: Padding(
              padding: const EdgeInsets.only(left: 51, right: 52),
              child: SvgPicture.asset(ImageAssets.cupGuy),
            )),
            // big text
            const SizedBox(
              height: 7,
            ),
            Text(
              'Wahoo! Completed Successfully',
              textAlign: TextAlign.center,
              style: GoogleFonts.playfairDisplay(
                  fontWeight: FontWeight.w700, fontSize: 24),
            ),
      
            const SizedBox(
              height:24,
            ),
            // small text
            Text(
              "Make this a regular habit and you just might not be needing us for long",
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w500,
                fontSize: 12,
              ),
            ),
            const Spacer(),
            CircularContainer(text: Text('CLOSE', style: GoogleFonts.roboto(
              fontWeight: FontWeight.w500,
              fontSize: 12,
              color: Colors.white
            ),), color: AppColor.gray)
          ],
        ),
      ),
    );
  }
}

