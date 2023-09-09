import 'package:flutter/material.dart';

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
