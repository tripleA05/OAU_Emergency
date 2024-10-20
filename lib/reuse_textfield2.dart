import 'package:flutter/material.dart';
import 'package:oau_emergency_1/constant.dart';

class ReuseTextfield2 extends StatelessWidget {
  const ReuseTextfield2({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    required this.obscureText,
  });

  final String? hintText;
  final Widget? prefixIcon;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(
          top: 20.0,
          bottom: 20.0,
        ),
        // obscureText: obscureText,
        prefixIcon: prefixIcon,
        prefixIconColor: greycolor2,
        hintText: hintText,
        hintStyle: greyTextStyle2,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              10.0,
            ),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: greycolor2,
            width: 1.0,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(
              10.0,
            ),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: greycolor2,
            width: 1.0,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(
              10.0,
            ),
          ),
        ),
      ),
    );
  }
}
