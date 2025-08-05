import 'package:flutter/material.dart';
import 'package:oau_emergency_1/folders/resource_file.dart/constant.dart';

class ReusePasswordTextfield extends StatefulWidget {
  const ReusePasswordTextfield({
    super.key,
    required this.hintText,
  });

  final String? hintText;

  @override
  State<ReusePasswordTextfield> createState() => _ReusePasswordTextfieldState();
}

class _ReusePasswordTextfieldState extends State<ReusePasswordTextfield> {
  bool isObscured = false;
  bool isVisible = false;
  Icon changedIcon = const Icon(Icons.visibility_off);
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isObscured,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(
          top: 20.0,
          bottom: 20.0,
        ),
        suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                isObscured = !isObscured;
                isVisible = !isVisible;
                if (isVisible) {
                  changedIcon = const Icon(Icons.visibility_off);
                } else {
                  changedIcon = const Icon(Icons.visibility);
                }
              });
            },
            icon: changedIcon),
        suffixIconColor: greycolor2,
        prefixIcon: const Icon(Icons.lock),
        prefixIconColor: greycolor2,
        hintText: widget.hintText,
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
              32.0,
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
              32.0,
            ),
          ),
        ),
      ),
    );
  }
}
