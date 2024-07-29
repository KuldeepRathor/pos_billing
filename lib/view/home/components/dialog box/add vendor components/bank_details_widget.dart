import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos_billing/res/colors/app_color.dart';
import 'package:pos_billing/utils/textstyle.dart';
import 'package:pos_billing/utils/widgets/custom_text_field.dart';

class BankDetailsWidget extends StatelessWidget {
  const BankDetailsWidget({
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
                    text: "Accounts",
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
                        name: 'A/c Name',
                        width: Get.width * .2,
                      ),
                      SizedBox(
                        width: Get.width * .02,
                      ),
                      CustomTextField(
                        name: 'A/c Number ',
                        width: Get.width * .2,
                      ),
                      SizedBox(
                        width: Get.width * .02,
                      ),
                      CustomTextField(
                        name: 'IFSC',
                        width: Get.width * .2,
                      )
                    ],
                  ),
                  SizedBox(
                    height: Get.height * .02,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: Get.height * .02,
          ),
          const CustomText(
            text: "Saved",
            color: primaryTextColor,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
          SizedBox(
            height: Get.height * .02,
          ),
          Row(
            children: [
              const SavedCardWidgets(),
              SizedBox(
                width: Get.width * .02,
              ),
              const SavedCardWidgets(),
              SizedBox(
                width: Get.width * .02,
              ),
              const SavedCardWidgets(),
            ],
          ),
        ],
      ),
    );
  }
}

class SavedCardWidgets extends StatelessWidget {
  const SavedCardWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: Get.width * 0.2,
          height: Get.height * .375,
          padding: EdgeInsets.all(
            Get.width * .02,
          ),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x1428328B),
                blurRadius: 12,
                offset: Offset(0, 2),
                spreadRadius: 0,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomText(
                text: "A/c Name",
                color: primaryColor,
                fontSize: 14,
              ),
              SizedBox(
                height: Get.height * .02,
              ),
              const CustomText(
                text: "Yogesh Kumar",
                color: primaryTextColor,
                fontSize: 16,
              ),
              SizedBox(
                height: Get.height * .02,
              ),
              const CustomText(
                text: "A/c Number",
                color: primaryColor,
                fontSize: 14,
              ),
              SizedBox(
                height: Get.height * .02,
              ),
              const CustomText(
                text: "4455 6600 3322 1100",
                color: primaryTextColor,
                fontSize: 16,
              ),
              SizedBox(
                height: Get.height * .02,
              ),
              const CustomText(
                text: "IFSC",
                color: primaryColor,
                fontSize: 14,
              ),
              SizedBox(
                height: Get.height * .02,
              ),
              const CustomText(
                text: "SBIN",
                color: primaryTextColor,
                fontSize: 16,
              ),
            ],
          ),
        ),
        Positioned(
          top: 8,
          right: 8,
          child: IconButton(
            icon: const Icon(
              Icons.close,
              color: Colors.red,
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
