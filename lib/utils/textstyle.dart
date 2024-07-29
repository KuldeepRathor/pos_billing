// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:pos_billing/res/colors/app_color.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final String? fontFamily;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final FontStyle? fontStyle;

  const CustomText({
    super.key,
    required this.text,
    this.color,
    this.fontSize,
    this.fontFamily,
    this.fontWeight,
    this.textAlign,
    this.fontStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        overflow: TextOverflow.ellipsis,
        color: color ?? primaryTextColor,
        fontSize: fontSize ?? 14.0,
        fontFamily: fontFamily ?? 'Satoshi',
        fontWeight: fontWeight ?? FontWeight.w500,
        fontStyle: fontStyle ?? FontStyle.normal,
      ),
    );
  }
}

class CustomTextExpanded extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final String? fontFamily;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final FontStyle? fontStyle;
  final int flex;

  const CustomTextExpanded({
    Key? key,
    required this.text,
    this.color,
    this.fontSize,
    this.fontFamily,
    this.fontWeight,
    this.textAlign,
    this.fontStyle,
    required this.flex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Text(
        text,
        textAlign: textAlign,
        style: TextStyle(
          overflow: TextOverflow.ellipsis,
          color: color ?? primaryTextColor,
          fontSize: fontSize ?? 14.0,
          fontFamily: fontFamily ?? 'Satoshi',
          fontWeight: fontWeight ?? FontWeight.w500,
          fontStyle: fontStyle ?? FontStyle.normal,
        ),
      ),
    );
  }
}
