// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos_billing/res/colors/app_color.dart';
import 'package:pos_billing/utils/textstyle.dart';
import 'package:pos_billing/view/home/components/dialog%20box/add%20vendor%20components/gst_details_widget.dart';

import 'add vendor components/balance_details_widget.dart';
import 'add vendor components/bank_details_widget.dart';

class AddVendorDialog extends StatefulWidget {
  const AddVendorDialog({super.key});

  @override
  State<AddVendorDialog> createState() => _AddVendorDialogState();
}

class _AddVendorDialogState extends State<AddVendorDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      child: Container(
        height: Get.height * .9,
        width: Get.width * .675,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: DefaultTabController(
          length: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 100,
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
                child: Column(
                  children: [
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CustomText(
                          text: 'Add Vendor',
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
                    const TabBar(
                      isScrollable: true,
                      labelColor: primaryColor,
                      tabAlignment: TabAlignment.start,
                      unselectedLabelColor: Colors.grey,
                      indicatorColor: primaryColor,
                      tabs: [
                        Tab(
                          child: CustomText(
                            text: "GST Details",
                            fontWeight: FontWeight.w400,
                            color: primaryColor,
                          ),
                        ),
                        Tab(
                          child: CustomText(
                            text: "Balance Details",
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Tab(
                          child: CustomText(
                            text: "Bank Details",
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.0,
                    // vertical: 16.0,
                  ),
                  child: TabBarView(
                    children: [
                      GSTDetailsWidget(),
                      BalanceDetailsWidget(),
                      BankDetailsWidget(),
                    ],
                  ),
                ),
              ),
              Container(
                // height: Get.height * .075,
                width: Get.width,
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
                        decoration: BoxDecoration(
                          color: grey1,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        height: 38,
                        width: 160,
                        // width: Get.width * .08,
                        // height: Get.height * .05,
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
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        // width: Get.width * .08,
                        // height: Get.height * .05,
                        height: 38,
                        width: 160,
                        child: const Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomText(
                                text: "Save",
                                color: whiteColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
                              CustomText(
                                text: " (ctrl + s)",
                                color: whiteColor,
                                fontSize: 14,
                                // fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.italic,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
