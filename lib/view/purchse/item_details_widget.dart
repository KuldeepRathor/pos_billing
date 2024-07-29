// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:pos_billing/utils/textstyle.dart';
import 'package:pos_billing/view/purchse/item_list_sample_widget.dart';

class ItemDetailsWidget extends StatefulWidget {
  const ItemDetailsWidget({
    super.key,
  });

  @override
  _ItemDetailsWidgetState createState() => _ItemDetailsWidgetState();
}

class _ItemDetailsWidgetState extends State<ItemDetailsWidget> {
  final TextEditingController pcsController = TextEditingController();
  final TextEditingController grossWtController = TextEditingController();
  final TextEditingController netWtController = TextEditingController();
  final TextEditingController vaController = TextEditingController();
  final TextEditingController mcController = TextEditingController();
  final TextEditingController stoneController = TextEditingController();
  final TextEditingController rateController = TextEditingController();
  final TextEditingController totalController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: CustomText(
                  text: 'Item Details',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              ItemListSampleWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
