import 'package:flutter/material.dart';

Widget customText(
  String text, {
  Color? color,
  FontWeight? fontWeight,
  double? fontSize,
}) {
  return Text(
    text,
    maxLines: 4,
    softWrap: true,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(
      color: color ?? Colors.black,
      fontWeight: fontWeight ?? FontWeight.normal,
      fontSize: fontSize ?? 16,
    ),
  );
}
