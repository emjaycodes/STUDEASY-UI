import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:study_app/assets.dart';
import 'package:study_app/screens/onboarding/onboarding_screen.dart';

import '../../colors.dart';
import '../../routes.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // image
          Center(
              child: Padding(
            padding: const EdgeInsets.only(left: 51, right: 52),
            child: SvgPicture.asset(ImageAssets.girl),
          )),
          // big text
          SizedBox(
            height: 7,
          ),
          Text(
            'Hold on smarty pants!',
            textAlign: TextAlign.center,
            style: GoogleFonts.playfairDisplay(
                fontWeight: FontWeight.w700, fontSize: 24),
          ),

          SizedBox(
            height: 7,
          ),
          // small text
          Text(
            "Let's get you signed up first.",
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.w500,
              fontSize: 12,
            ),
          ),
          // two text field
          CustomTextfield(
            text: 'Groot',
            icon: SvgPicture.asset(
              ImageAssets.email,
            ),
          ),
          CustomTextfield(text: 'Email', icon: Icon(Icons.email_outlined)),
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 32),
              child: CircularContainer(
                onTap: (){
                  Navigator.of(context).pushNamed(AppRoutes.setTarget);
                },
                  text: Text('CONFIRM',
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Colors.white)),
                  color: AppColor.gray),
            ),
          )
        ],
      ),
    );
  }
}

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({
    super.key,
    required this.text,
    required this.icon,
  });
  final String text;
  final Widget icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 48, right: 47),
      child: TextFormField(
        decoration: InputDecoration(
            hintText: text,
            suffixIcon:
                Padding(padding: const EdgeInsets.all(15), child: icon)),
      ),
    );
  }
}
