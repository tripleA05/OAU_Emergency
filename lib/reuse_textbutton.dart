import 'package:flutter/material.dart';
import 'package:oau_emergency_1/constant.dart';

class ReuseTextButton extends StatelessWidget {
  const ReuseTextButton({
    required this.text,
    super.key,
    required this.onPressed,
  });

  final String? text;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed(),
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        backgroundColor: primarycolor,
        foregroundColor: whitecolor,
        minimumSize: const Size(double.infinity, 56.0),
      ),
      child: Text(
        '$text',
        style: whiteTextStyle,
      ),
    );
  }
}
