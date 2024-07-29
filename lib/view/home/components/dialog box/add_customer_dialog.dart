// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos_billing/res/colors/app_color.dart';
import 'package:pos_billing/utils/textstyle.dart';
import 'package:pos_billing/utils/widgets/custom_button1.dart';
import 'package:pos_billing/utils/widgets/custom_text_field.dart';

class AddCustomerDialog extends StatelessWidget {
  const AddCustomerDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      child: Container(
        height: Get.height * .85,
        width: Get.width * .7,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 72,
              width: Get.width,
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              decoration: const BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 1.0,
                    spreadRadius: 0.5,
                    offset: Offset(0, 1.0),
                  ),
                ],
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomText(
                      text: 'Add Customer',
                      color: primaryColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                    IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: const Icon(
                        Icons.close,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24.0,
                    vertical: 16.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CustomTextField(
                            name: 'Phone Number',
                            width: Get.width * .2,
                          ),
                          SizedBox(
                            width: Get.width * .02,
                          ),
                          CustomTextField(
                            name: 'Name',
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
                            name: 'Address Line 1',
                            width: Get.width * .2,
                          ),
                          SizedBox(
                            width: Get.width * .02,
                          ),
                          CustomTextField(
                            name: 'Address Line 2',
                            width: Get.width * .2,
                          ),
                          SizedBox(
                            width: Get.width * .02,
                          ),
                          CustomTextField(
                            name: 'City',
                            width: Get.width * .2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Get.height * .02,
                      ),
                      Row(
                        children: [
                          CustomTextField(
                            name: 'PIN Code',
                            width: Get.width * .2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Get.height * .02,
                      ),
                      const CustomText(
                        text: "Legal",
                        color: primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                      SizedBox(
                        height: Get.height * .02,
                      ),
                      Row(
                        children: [
                          CustomTextField(
                            name: 'PAN No.',
                            width: Get.width * .2,
                          ),
                          SizedBox(
                            width: Get.width * .02,
                          ),
                          Column(
                            children: [
                              const CustomText(text: ""),
                              const SizedBox(
                                height: 10,
                              ),
                              CustomButton1(
                                buttonName: 'Verify',
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Get.height * .02,
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: Get.width * .2,
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomText(
                                      text: "GST Details",
                                      color: blackColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    CustomText(
                                      text: "CGST",
                                      color: secondaryColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 10),
                              SizedBox(
                                height: Get.height * .05,
                                width: Get.width * .2,
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10.0),
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: secondaryColor),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10.0),
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: secondaryColor,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 14,
              ),
              decoration: const BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 1.0,
                    spreadRadius: 0.5,
                    offset: Offset(0, 1.0),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      width: 160,
                      height: 38,
                      decoration: BoxDecoration(
                        color: grey1,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Center(
                        child: CustomText(
                          text: "Ignore",
                          color: primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      width: 160,
                      height: 38,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomText(
                              text: "Save",
                              color: whiteColor,
                              fontWeight: FontWeight.bold,
                            ),
                            CustomText(
                              text: " (ctrl + s)",
                              color: whiteColor,
                              fontStyle: FontStyle.italic,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
