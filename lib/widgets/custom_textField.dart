import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyTextField extends StatelessWidget {
  final String? name;
  final bool? obscureText;
  final IconData? icon;
  final TextInputType? keyboardType;
  final IconData? lastIcon;
  final VoidCallback? onPressed;

  MyTextField({
    Key? key,
    this.name,
    this.obscureText,
    this.icon,
    this.keyboardType,
    this.lastIcon,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: 300.w,
      child: TextFormField(
        obscureText: obscureText!,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          prefixIcon: Icon(icon),
          suffixIcon: IconButton(
            icon: Icon(lastIcon),
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
}
