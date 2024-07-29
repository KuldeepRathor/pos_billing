// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:pos_billing/res/colors/app_color.dart';

import 'package:pos_billing/utils/textstyle.dart';
import 'package:pos_billing/view/home/components/dialog%20box/add_customer_dialog.dart';

import '../home/components/cards/party_details_card.dart';

class PartyDetailsWidget extends StatelessWidget {
  const PartyDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        height: 192,
        constraints: const BoxConstraints(
          minHeight: 192,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomText(
                text: 'Party Details',
                color: Colors.black,
                fontSize: 16,
                // fontFamily: 'Satoshi',
                fontWeight: FontWeight.w700,
              ),
              const SizedBox(height: 8),
              const CustomText(
                text: "Enter Phone Number / Code / Party Name",
                color: Color(0xFF111111),
                fontSize: 12,
                fontFamily: 'Satoshi',
                fontWeight: FontWeight.w700,
              ),
              const SizedBox(height: 8),
              SizedBox(
                height: 34,
                child: TextFormField(
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8.0),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: secondaryColor),
                      borderRadius: BorderRadius.all(
                        Radius.circular(8.0),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: secondaryColor, width: 2.0),
                      borderRadius: BorderRadius.all(
                        Radius.circular(8.0),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              PartyDetailsCard(
                sundryDebtor: 'Anant Ambani',
                sgst: 'ABCDE0000GABCDE',
                address: '5/2,4/2, Anuman ... Tamilnadu',
                onEditPressed: () {
                  Get.dialog(
                    const AddCustomerDialog(),
                  );
                },
              ),
              // const SizedBox(
              //   height: 16,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
