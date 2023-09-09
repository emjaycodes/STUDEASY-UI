import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:study_app/screens/onboarding/onboarding_screen.dart';


import '../../core/assets.dart';
import '../../core/colors.dart';
import '../../core/routes.dart';
import '../../core/widgets/circular_container.dart';

class PromptScreen extends StatelessWidget {
  const PromptScreen({super.key});

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
          Padding(
            padding: const EdgeInsets.only(left: 48, right: 73),
            child: Text(
              'One last little thing!',
              textAlign: TextAlign.left,
              style: GoogleFonts.playfairDisplay(
                  fontWeight: FontWeight.w700,
                  fontSize: 36,
                  color: AppColor.gray),
            ),
          ),
          const SizedBox(
            height: 28,
          ),
          // small text
          Padding(
            padding: const EdgeInsets.only(left: 48, right: 57),
            child: Text(
              'To better set prompts that will be at your convenience, we need this little info.',
              style: GoogleFonts.roboto(
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(
            height: 59,
          ),
          Text(
            'YOU ARE A',
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.w500,
              fontSize: 12,
            ),
          ),
          const SizedBox(
            height: 29,
          ),
          // 2 containers
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              PromptContainer(
                icon: ImageAssets.moon,
                text: 'NIGHT OWL',
              ),
              PromptContainer(
                icon: ImageAssets.sun,
                text: 'EARLY BIRD',
              ),
            ],
          ),
          const Spacer(),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 31, bottom: 33),
              child:  CircularContainer(
                onTap: (){
                  Navigator.of(context).pushNamed(AppRoutes.home);
                },
                text: Text('START', style: GoogleFonts.roboto(
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: Colors.white
              ),), color: AppColor.gray),
            ))
        ],
      ),
    );
  }
}

class PromptContainer extends StatelessWidget {
  const PromptContainer({
    super.key,
    required this.text,
    required this.icon,
  });
  final String text;
  final String icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 186,
      width: 127,
      decoration:  BoxDecoration(
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
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 19, top: 17),
            child: Container(
              height: 84,
              width: 88,
              decoration:
                  const BoxDecoration(color: AppColor.softBlue,),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SvgPicture.asset(icon, height: 5, width: 5,),
              ),
            ),
          ),
          const SizedBox(height: 21,),
          Text(text, style: GoogleFonts.playfairDisplay(
            fontWeight: FontWeight.w700,
            
            fontSize: 18,
          ),)
        ],
      ),
    );
  }
}
