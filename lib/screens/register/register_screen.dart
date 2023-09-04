import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:study_app/assets.dart';
import 'package:study_app/screens/onboarding/onboarding_screen.dart';

import '../../colors.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
            title: const Text('STUDEASY',style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 14,
              height: 17,
              color: AppColor.vanadylBlue,
            ),),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // image
            Center(child: SvgPicture.asset(ImageAssets.girl)),
            // big text
            Text('Hold on smarty pants!',   
            textAlign: TextAlign.center,
            style: GoogleFonts.playfairDisplay(
              fontWeight: FontWeight.w700,
              fontSize: 24
            ),),
            // small text
            Text("Let's get you signed up first.", style: GoogleFonts.roboto(
              fontWeight: FontWeight.w500,
              fontSize: 12,
            ),),
            // two text field
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Groot',
                suffixIcon: SizedBox(
                  height: 15,
                  width: 15,
                  child: SvgPicture.asset(
                    ImageAssets.email, height: 15, width: 15,),
                )
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Email',
                suffixIcon: Icon(Icons.email_outlined)
              ),
            ),
             CircularContainer(text: Text('CONFIRM', style: GoogleFonts.roboto(
            fontWeight: FontWeight.w500,
            fontSize: 12,
            color: Colors.white
            )), color: AppColor.gray)
          ],
        ),
    );
  }
}