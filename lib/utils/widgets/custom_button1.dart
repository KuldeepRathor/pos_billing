import 'package:flutter/material.dart';
import 'package:pos_billing/res/colors/app_color.dart';
import 'package:pos_billing/utils/textstyle.dart';

class CustomButton1 extends StatelessWidget {
  final String buttonName;
  final VoidCallback onPressed;

  const CustomButton1({
    super.key,
    required this.buttonName,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Focus(
      // onFocusChange: (hasFocus) {},
      child: KeyboardListener(
        focusNode: FocusNode(),
        child: InkWell(
          onTap: onPressed,
          child: Container(
            height: 38,
            width: 140,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: CustomText(
                textAlign: TextAlign.center,
                text: buttonName,
                color: whiteColor,
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
