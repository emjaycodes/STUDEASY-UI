import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';


import '../../core/assets.dart';
import '../../core/colors.dart';
import '../../core/routes.dart';
import '../../core/widgets/circular_container.dart';

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
                   color: Colors.black
                ),),
              )
            ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // image 
              Center(child: SvgPicture.asset(ImageAssets.laptopGuy)),
              const SizedBox(height: 20,),
            // big text 
            Text('Reading has never been more easier.',
            softWrap: true,
            textAlign: TextAlign.center,
             style: GoogleFonts.playfairDisplay(
              fontWeight: FontWeight.w700,
              fontSize: 24,
              color: Colors.black
            ),),
            const SizedBox(height: 20,),
            // little text 
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 51),
              child: Text("Let's keep things minimal shall we? It's all about putting your focus on reading.",
              softWrap: true, 
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w500,
                fontSize: 12,
              ),),
            ),
            const Spacer(),
             Padding(
               padding: const EdgeInsets.only(left: 41, right: 20),
               child: Row(
                children: [
                  const Text('2/3'),
                  const Spacer(),
                  CircularContainer(text: const Text('Next'), color: AppColor.softBlue, onTap: () {
                    Navigator.of(context).pushNamed(AppRoutes.register);
                  },)
                ],
                         ),
             ),
            const Padding(padding: EdgeInsets.only(bottom: 30))
          ],
        ),
      ),
    );
  }
}

