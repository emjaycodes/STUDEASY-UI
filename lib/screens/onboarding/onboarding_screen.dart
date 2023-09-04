import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:study_app/assets.dart';
import 'package:study_app/colors.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: const Text('STUDEASY',style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 14,
              height: 17,
              color: AppColor.vanadylBlue,
            ),),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('SKIP', style: GoogleFonts.roboto(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  height: 14.06,
                  color: Colors.black
                ),),
              )
            ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // image 
                SvgPicture.asset(ImageAssets.laptopGuy),
              // big text 
              Text('Reading has never been more easier.',
              softWrap: true,
              textAlign: TextAlign.center,
               style: GoogleFonts.playfairDisplay(
                fontWeight: FontWeight.w700,
                fontSize: 24,
                color: Colors.black
              ),),
              // little text 
              Text("Let's keep things minimal shall we? It's all about putting your focus on reading.",
              softWrap: true, 
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w500,
                fontSize: 12,
              ),),
              const Row(
                children: [
                  Text('2/3'),
                  Spacer(),
                  CircularContainer(text: Text('Next'), color: AppColor.softBlue,)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CircularContainer extends StatelessWidget {
  const CircularContainer({
    super.key, required this.text, required this.color,
  });
  final Text text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color
      ),
      child: Center(child: text),
    );
  }
}