import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos_billing/res/colors/app_color.dart';
import 'package:pos_billing/utils/textstyle.dart';
import 'package:pos_billing/utils/widgets/custom_button1.dart';
import 'package:pos_billing/utils/widgets/custom_dropdown_field.dart';
import 'package:pos_billing/utils/widgets/custom_text_field.dart';

class GSTDetailsWidget extends StatefulWidget {
  const GSTDetailsWidget({super.key});

  @override
  State<GSTDetailsWidget> createState() => _GSTDetailsWidgetState();
}

class _GSTDetailsWidgetState extends State<GSTDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    String selectedValue = 'Item 1';
    final List<String> dropdownItems = ['Item 1', 'Item 2', 'Item 3'];
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: Get.height * .02,
          ),
          const CustomText(
            text: "GST",
            color: primaryTextColor,
            fontWeight: FontWeight.bold,
            fontSize: 18,
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: "GST Details",
                          color: blackColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                        CustomText(
                          text: "SGST",
                          color: secondaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    height: 38,
                    width: Get.width * .2,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: secondaryColor,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: secondaryColor,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
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
                    buttonName: 'Fetch Details',
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
              CustomTextField(
                name: 'Enter Code',
                width: Get.width * .2,
              ),
              SizedBox(
                width: Get.width * .02,
              ),
              CustomTextField(
                name: 'Store Name',
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomText(
                text: "Legal",
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
                    name: 'PAN No.',
                    width: Get.width * .2,
                  ),
                  SizedBox(
                    width: Get.width * .02,
                  ),
                  CustomDropdownField(
                    name: 'Ledger',
                    width: Get.width * .2,
                    items: dropdownItems,
                    selectedItem: selectedValue,
                    onChanged: (newValue) {
                      setState(() {
                        selectedValue = newValue!;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
