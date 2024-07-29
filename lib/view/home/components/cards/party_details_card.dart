// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:pos_billing/res/colors/app_color.dart';
import 'package:pos_billing/utils/textstyle.dart';

class PartyDetailsCard extends StatelessWidget {
  final String sundryDebtor;
  final String sgst;
  final String address;
  final VoidCallback onEditPressed;

  const PartyDetailsCard({
    super.key,
    required this.sundryDebtor,
    required this.sgst,
    required this.address,
    required this.onEditPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: grey1,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomText(
                text: 'Sundry Debtor',
                fontSize: 12,
                color: primaryColor,
                fontWeight: FontWeight.w700,
              ),
              CustomText(
                text: sundryDebtor,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomText(
                text: 'SGST',
                color: primaryColor,
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),
              CustomText(
                text: sgst,
                color: primaryTextColor,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomText(
                text: 'Address',
                color: primaryColor,
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),
              CustomText(
                text: address,
                color: primaryTextColor,
              ),
            ],
          ),
          InkWell(
            onTap: onEditPressed,
            child: const Column(
              children: [
                CustomText(
                  text: 'Edit',
                  color: primaryColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
                CustomText(
                  text: "(ctrl + e)",
                  color: primaryColor,
                  fontSize: 12,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
