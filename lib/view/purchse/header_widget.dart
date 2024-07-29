// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';

import 'package:pos_billing/res/colors/app_color.dart';
import 'package:pos_billing/utils/textstyle.dart';

class HeaderWidget extends StatelessWidget {
  String header;
  HeaderWidget({
    super.key,
    required this.header,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62,
      width: double.infinity,
      color: whiteColor,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Row(
          children: [
            CustomText(
              text: header,
              // 'Purchase',

              color: primaryColor,
              fontSize: 20,
              fontWeight: FontWeight.w900,

              // textAlign: TextAlign.start,
            ),
            const Spacer(),
            const CircleAvatar(
              backgroundImage: NetworkImage(
                'https://cdn-icons-png.flaticon.com/512/149/149071.png',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
