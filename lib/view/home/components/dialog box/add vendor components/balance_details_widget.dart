// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos_billing/res/colors/app_color.dart';
import 'package:pos_billing/utils/textstyle.dart';
import 'package:pos_billing/utils/widgets/custom_text_field.dart';

class BalanceDetailsWidget extends StatelessWidget {
  const BalanceDetailsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: Get.height * .02,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomText(
                    text: "Opening",
                    color: primaryTextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  SizedBox(
                    height: Get.height * .02,
                  ),
                  Row(
                    children: [
                      CustomTextField(
                        name: 'Opening Balance Credit',
                        width: Get.width * .2,
                      ),
                      SizedBox(
                        width: Get.width * .02,
                      ),
                      CustomTextField(
                        name: 'Opening Balance Debit',
                        width: Get.width * .2,
                      )
                    ],
                  ),
                  SizedBox(
                    height: Get.height * .02,
                  ),
                  Row(
                    children: [
                      CustomTextField(
                        name: 'Opening Weight Credit',
                        width: Get.width * .2,
                      ),
                      SizedBox(
                        width: Get.width * .02,
                      ),
                      CustomTextField(
                        name: 'Opening Weight Debit',
                        width: Get.width * .2,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                width: Get.width * .02,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomText(
                    text: "Closing",
                    color: primaryTextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  SizedBox(
                    height: Get.height * .02,
                  ),
                  CustomTextField(
                    name: 'Closing Balance Credit',
                    width: Get.width * .2,
                  ),
                  SizedBox(
                    height: Get.height * .02,
                  ),
                  CustomTextField(
                    name: 'Closing Weight Debit',
                    width: Get.width * .2,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
