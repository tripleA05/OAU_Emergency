import 'package:flutter/material.dart';
import 'package:oau_emergency_1/folders/resource_file.dart/constant.dart';

class ReuseTextButton extends StatelessWidget {
  const ReuseTextButton({
    required this.text,
    super.key,
    required this.onPressed,
    this.child,
  });

  final String? text;
  final Function()? onPressed;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        backgroundColor: primarycolor,
        foregroundColor: whitecolor,
        minimumSize: const Size(double.infinity, 56.0),
      ),
      child: child ?? Text(
        '$text',
        style: whiteTextStyle,
      ),
    );
  }
}
