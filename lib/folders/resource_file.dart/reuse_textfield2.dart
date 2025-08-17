import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:oau_emergency_1/folders/resource_file.dart/constant.dart';

class ReuseTextfield2 extends StatelessWidget {
  const ReuseTextfield2({
    super.key,
    required this.hintText,
    @required this.prefixIcon,
    required this.obscureText,
    this.controller,
    this.inputFormatters,
  });

  final String? hintText;
  final Widget? prefixIcon;
  final bool obscureText;
  final TextEditingController? controller;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: TextInputType.name,
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
        // child: SizedBox(
        //   width: 3,
        //   height: 1,
        //   child: Divider(
        //     height: 1,
        //     color: greycolor2,
        //     thickness: 30,
        //   ),
        // ),
        contentPadding:
            const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 10),
        // obscureText: obscureText,
        prefixIcon: prefixIcon,
        prefixIconColor: greycolor2,
        hintText: hintText,
        hintStyle: greyTextStyle2,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              10.0,
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
              10.0,
            ),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: primarycolor,
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
