// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:pos_billing/res/colors/app_color.dart';

class CustomCalendar extends StatelessWidget {
  final Function(DateTime) onDateSelected;

  const CustomCalendar({super.key, required this.onDateSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      margin: const EdgeInsets.only(top: 8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: secondaryColor),
        borderRadius: BorderRadius.circular(10),
      ),
      child: CalendarDatePicker(
        initialDate: DateTime.now(),
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101),
        onDateChanged: onDateSelected,
      ),
    );
  }
}
