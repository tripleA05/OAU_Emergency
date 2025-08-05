import 'package:flutter/material.dart';
import 'package:oau_emergency_1/folders/resource_file.dart/constant.dart';

class ReuseTextfield extends StatelessWidget {
  const ReuseTextfield({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    // required this.obscureText,
  });

  final String? hintText;
  final Widget? prefixIcon;
  // final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      // obscureText: obscureText,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(
          top: 20.0,
          // left: 30,
          bottom: 20.0,
        ),
        // obscureText: obscureText,
        prefixIcon: prefixIcon,
        prefixIconColor: greycolor2,
        hintText: hintText,
        hintStyle: greyTextStyle2,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              32.0,
            ),
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: greycolor2,
            width: 1.0,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(
              32.0,
            ),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: primarycolor,
            width: 1,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(
              32.0,
            ),
          ),
        ),
      ),
    );
  }
}
