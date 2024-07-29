// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:pos_billing/res/colors/app_color.dart';
import 'package:pos_billing/utils/textstyle.dart';
import 'package:svg_flutter/svg_flutter.dart';

class CustomButton2 extends StatelessWidget {
  String buttonName;
  String image;
  Function onPressed;
  CustomButton2({
    super.key,
    required this.buttonName,
    required this.image,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed(),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
        ),
        clipBehavior: Clip.antiAlias,
        height: 38,

        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        // width: Get.width * .1,
        // height: 38,
        child: Center(
          child: Row(
            children: [
              SvgPicture.asset(image),
              SizedBox(
                width: 8,
              ),
              CustomText(
                textAlign: TextAlign.center,
                text: buttonName,
                color: whiteColor,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomButton3 extends StatelessWidget {
  String buttonName;
  String image;
  Function onPressed;
  CustomButton3({
    super.key,
    required this.buttonName,
    required this.image,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed(),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
        ),
        clipBehavior: Clip.antiAlias,
        height: 38,
        decoration: BoxDecoration(
          color: grey1,
          borderRadius: BorderRadius.circular(8),
        ),
        // width: Get.width * .1,
        // height: 38,
        child: Center(
          child: Row(
            children: [
              SvgPicture.asset(
                image,
                color: primaryColor,
              ),
              SizedBox(
                width: 8,
              ),
              CustomText(
                textAlign: TextAlign.center,
                text: buttonName,
                color: primaryColor,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
