import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget MyTextfield(
  String? name,
  bool? obsecureText, {
  IconData? icon,
  TextInputType? keyboardType,
  IconData? lasticon,
  void Function()? onPressed,
}) {
  return Container(
    height: 50.h,
    width: 300.w,
    child: TextFormField(
      obscureText: obsecureText!,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        prefixIcon: Icon(icon),
        suffixIcon: IconButton(
          icon: Icon(lasticon),
          onPressed: onPressed,
        ),
        labelText: name,
        labelStyle: TextStyle(fontSize: 20.sp, color: Color(0xff6c6c6c)),
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
    ),
  );
}
